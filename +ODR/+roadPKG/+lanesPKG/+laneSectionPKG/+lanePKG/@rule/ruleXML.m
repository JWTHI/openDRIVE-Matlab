function obj = ruleXML(obj,rule)
%ruleXML define the rule class based on xml input

obj.sOffset         = str2double(rule.Attributes.sOffset);
obj.value           = rule.Attributes.value;

end
