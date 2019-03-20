package com.product.po;

import java.util.ArrayList;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPidIsNull() {
            addCriterion("pid is null");
            return (Criteria) this;
        }

        public Criteria andPidIsNotNull() {
            addCriterion("pid is not null");
            return (Criteria) this;
        }

        public Criteria andPidEqualTo(String value) {
            addCriterion("pid =", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotEqualTo(String value) {
            addCriterion("pid <>", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThan(String value) {
            addCriterion("pid >", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThanOrEqualTo(String value) {
            addCriterion("pid >=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThan(String value) {
            addCriterion("pid <", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThanOrEqualTo(String value) {
            addCriterion("pid <=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLike(String value) {
            addCriterion("pid like", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotLike(String value) {
            addCriterion("pid not like", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidIn(List<String> values) {
            addCriterion("pid in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotIn(List<String> values) {
            addCriterion("pid not in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidBetween(String value1, String value2) {
            addCriterion("pid between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotBetween(String value1, String value2) {
            addCriterion("pid not between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andPnameIsNull() {
            addCriterion("pname is null");
            return (Criteria) this;
        }

        public Criteria andPnameIsNotNull() {
            addCriterion("pname is not null");
            return (Criteria) this;
        }

        public Criteria andPnameEqualTo(String value) {
            addCriterion("pname =", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotEqualTo(String value) {
            addCriterion("pname <>", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameGreaterThan(String value) {
            addCriterion("pname >", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameGreaterThanOrEqualTo(String value) {
            addCriterion("pname >=", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLessThan(String value) {
            addCriterion("pname <", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLessThanOrEqualTo(String value) {
            addCriterion("pname <=", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLike(String value) {
            addCriterion("pname like", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotLike(String value) {
            addCriterion("pname not like", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameIn(List<String> values) {
            addCriterion("pname in", values, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotIn(List<String> values) {
            addCriterion("pname not in", values, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameBetween(String value1, String value2) {
            addCriterion("pname between", value1, value2, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotBetween(String value1, String value2) {
            addCriterion("pname not between", value1, value2, "pname");
            return (Criteria) this;
        }

        public Criteria andQohIsNull() {
            addCriterion("qoh is null");
            return (Criteria) this;
        }

        public Criteria andQohIsNotNull() {
            addCriterion("qoh is not null");
            return (Criteria) this;
        }

        public Criteria andQohEqualTo(Integer value) {
            addCriterion("qoh =", value, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohNotEqualTo(Integer value) {
            addCriterion("qoh <>", value, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohGreaterThan(Integer value) {
            addCriterion("qoh >", value, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohGreaterThanOrEqualTo(Integer value) {
            addCriterion("qoh >=", value, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohLessThan(Integer value) {
            addCriterion("qoh <", value, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohLessThanOrEqualTo(Integer value) {
            addCriterion("qoh <=", value, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohIn(List<Integer> values) {
            addCriterion("qoh in", values, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohNotIn(List<Integer> values) {
            addCriterion("qoh not in", values, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohBetween(Integer value1, Integer value2) {
            addCriterion("qoh between", value1, value2, "qoh");
            return (Criteria) this;
        }

        public Criteria andQohNotBetween(Integer value1, Integer value2) {
            addCriterion("qoh not between", value1, value2, "qoh");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdIsNull() {
            addCriterion("qoh_threshold is null");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdIsNotNull() {
            addCriterion("qoh_threshold is not null");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdEqualTo(Integer value) {
            addCriterion("qoh_threshold =", value, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdNotEqualTo(Integer value) {
            addCriterion("qoh_threshold <>", value, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdGreaterThan(Integer value) {
            addCriterion("qoh_threshold >", value, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdGreaterThanOrEqualTo(Integer value) {
            addCriterion("qoh_threshold >=", value, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdLessThan(Integer value) {
            addCriterion("qoh_threshold <", value, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdLessThanOrEqualTo(Integer value) {
            addCriterion("qoh_threshold <=", value, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdIn(List<Integer> values) {
            addCriterion("qoh_threshold in", values, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdNotIn(List<Integer> values) {
            addCriterion("qoh_threshold not in", values, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdBetween(Integer value1, Integer value2) {
            addCriterion("qoh_threshold between", value1, value2, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andQoh_thresholdNotBetween(Integer value1, Integer value2) {
            addCriterion("qoh_threshold not between", value1, value2, "qoh_threshold");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceIsNull() {
            addCriterion("original_price is null");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceIsNotNull() {
            addCriterion("original_price is not null");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceEqualTo(Float value) {
            addCriterion("original_price =", value, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceNotEqualTo(Float value) {
            addCriterion("original_price <>", value, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceGreaterThan(Float value) {
            addCriterion("original_price >", value, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceGreaterThanOrEqualTo(Float value) {
            addCriterion("original_price >=", value, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceLessThan(Float value) {
            addCriterion("original_price <", value, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceLessThanOrEqualTo(Float value) {
            addCriterion("original_price <=", value, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceIn(List<Float> values) {
            addCriterion("original_price in", values, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceNotIn(List<Float> values) {
            addCriterion("original_price not in", values, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceBetween(Float value1, Float value2) {
            addCriterion("original_price between", value1, value2, "original_price");
            return (Criteria) this;
        }

        public Criteria andOriginal_priceNotBetween(Float value1, Float value2) {
            addCriterion("original_price not between", value1, value2, "original_price");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateIsNull() {
            addCriterion("discnt_rate is null");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateIsNotNull() {
            addCriterion("discnt_rate is not null");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateEqualTo(Float value) {
            addCriterion("discnt_rate =", value, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateNotEqualTo(Float value) {
            addCriterion("discnt_rate <>", value, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateGreaterThan(Float value) {
            addCriterion("discnt_rate >", value, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateGreaterThanOrEqualTo(Float value) {
            addCriterion("discnt_rate >=", value, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateLessThan(Float value) {
            addCriterion("discnt_rate <", value, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateLessThanOrEqualTo(Float value) {
            addCriterion("discnt_rate <=", value, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateIn(List<Float> values) {
            addCriterion("discnt_rate in", values, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateNotIn(List<Float> values) {
            addCriterion("discnt_rate not in", values, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateBetween(Float value1, Float value2) {
            addCriterion("discnt_rate between", value1, value2, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andDiscnt_rateNotBetween(Float value1, Float value2) {
            addCriterion("discnt_rate not between", value1, value2, "discnt_rate");
            return (Criteria) this;
        }

        public Criteria andSidIsNull() {
            addCriterion("sid is null");
            return (Criteria) this;
        }

        public Criteria andSidIsNotNull() {
            addCriterion("sid is not null");
            return (Criteria) this;
        }

        public Criteria andSidEqualTo(String value) {
            addCriterion("sid =", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotEqualTo(String value) {
            addCriterion("sid <>", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThan(String value) {
            addCriterion("sid >", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThanOrEqualTo(String value) {
            addCriterion("sid >=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThan(String value) {
            addCriterion("sid <", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThanOrEqualTo(String value) {
            addCriterion("sid <=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLike(String value) {
            addCriterion("sid like", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotLike(String value) {
            addCriterion("sid not like", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidIn(List<String> values) {
            addCriterion("sid in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotIn(List<String> values) {
            addCriterion("sid not in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidBetween(String value1, String value2) {
            addCriterion("sid between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotBetween(String value1, String value2) {
            addCriterion("sid not between", value1, value2, "sid");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}