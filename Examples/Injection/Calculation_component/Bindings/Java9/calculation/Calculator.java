/*++

Copyright (C) 2019 Calculation developers

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.7.0-develop.

Abstract: This is an autogenerated Java file in order to allow an easy
 use of Calculation library

Interface version: 1.0.0

*/

package calculation;

import com.sun.jna.Library;
import com.sun.jna.Memory;
import com.sun.jna.Native;
import com.sun.jna.Pointer;
import java.lang.ref.Cleaner;

import numbers.*;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

public class Calculator extends Base {

	public Calculator(CalculationWrapper wrapper, CalculationHandle handle) {
		super(wrapper, handle);
	}

	/**
	 * Adds a Variable to the list of Variables this calculator works on
	 *
	 * @param variable The new variable in this calculator
	 * @throws CalculationException
	 */
	public void enlistVariable(Variable variable) throws CalculationException {
		NumbersHandle.ByValue variableHandle;
		if (variable != null) {
			variableHandle = variable.getHandle().Value();
		} else {
			throw new CalculationException(CalculationException.CALCULATION_ERROR_INVALIDPARAM, "Variable is a null value.");
		}
		mWrapper.checkError(this, mWrapper.calculation_calculator_enlistvariable.invokeInt(new java.lang.Object[]{mHandle.Value(), variableHandle}));
	}

	/**
	 * Returns an instance of a enlisted variable
	 *
	 * @param index The index of the variable to query
	 * @return The Index-th variable in this calculator
	 * @throws CalculationException
	 */
	public Variable getEnlistedVariable(int index) throws CalculationException {
		NumbersHandle handleVariable = new NumbersHandle();
		mWrapper.checkError(this, mWrapper.calculation_calculator_getenlistedvariable.invokeInt(new java.lang.Object[]{mHandle.Value(), index, handleVariable}));
		Variable variable = null;
		if (handleVariable.Handle == Pointer.NULL) {
		  throw new CalculationException(CalculationException.CALCULATION_ERROR_INVALIDPARAM, "Variable was a null pointer");
		}
		variable = mWrapper.getNumbersWrapper().PolymorphicFactory(handleVariable, Variable.class);
		return variable;
	}

	/**
	 * Clears all variables in enlisted in this calculator
	 *
	 * @throws CalculationException
	 */
	public void clearVariables() throws CalculationException {
		mWrapper.checkError(this, mWrapper.calculation_calculator_clearvariables.invokeInt(new java.lang.Object[]{mHandle.Value()}));
	}

	/**
	 * Multiplies all enlisted variables
	 *
	 * @return Variable that holds the product of all enlisted Variables
	 * @throws CalculationException
	 */
	public Variable multiply() throws CalculationException {
		NumbersHandle handleInstance = new NumbersHandle();
		mWrapper.checkError(this, mWrapper.calculation_calculator_multiply.invokeInt(new java.lang.Object[]{mHandle.Value(), handleInstance}));
		Variable instance = null;
		if (handleInstance.Handle == Pointer.NULL) {
		  throw new CalculationException(CalculationException.CALCULATION_ERROR_INVALIDPARAM, "Instance was a null pointer");
		}
		instance = mWrapper.getNumbersWrapper().PolymorphicFactory(handleInstance, Variable.class);
		return instance;
	}

	/**
	 * Sums all enlisted variables
	 *
	 * @return Variable that holds the sum of all enlisted Variables
	 * @throws CalculationException
	 */
	public Variable add() throws CalculationException {
		NumbersHandle handleInstance = new NumbersHandle();
		mWrapper.checkError(this, mWrapper.calculation_calculator_add.invokeInt(new java.lang.Object[]{mHandle.Value(), handleInstance}));
		Variable instance = null;
		if (handleInstance.Handle == Pointer.NULL) {
		  throw new CalculationException(CalculationException.CALCULATION_ERROR_INVALIDPARAM, "Instance was a null pointer");
		}
		instance = mWrapper.getNumbersWrapper().PolymorphicFactory(handleInstance, Variable.class);
		return instance;
	}


}

