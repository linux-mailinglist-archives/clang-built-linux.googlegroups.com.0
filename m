Return-Path: <clang-built-linux+bncBCR5PSMFZYORBAHM2TUQKGQENS2J35Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3306F838
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 06:05:21 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id b78sf704488ybg.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 21:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563768321; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWtHSd1FNj2KAg2Oa45sF8WPOVxfGA1+OlSxT1/+lKOuKvxJuQNBgfnJM1B/vKgFGg
         Gim1Wrn6eEaHvBZOropGE0jB37PkRZlm8L+JCwBuRH4yvWMFMmYXa/CQayHY3kFDPZkW
         Or4BakxM/cBnnW33uxjk6DrKyYk2BhPw/TeD+R86svGCnjKO1COY2GEylDeMrJLiHMig
         w5I1NmVgb5zXYbbm1F+3qc1ClLZGG4467jeRxXBTjlJRenFFiEdCctgwBCKe+SAPtzcC
         F7wFTbOlSPAL21E0xMrmyM1VPZdEB4kg8sUqJRwsN7ilfL030KgqY6PR9QLu791umvcm
         ZPrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=WLut+KnADSUVERyJJUB0vDX/1CwqyEaZP5NevANrTCo=;
        b=lLOzHbWFXor4RT7k1vctkOhXw3OIa2ICCoWm2qjH4c7gNABfXlW5vtVz/hkOeMa7Kj
         yClOIbxnTq4sSEdGlX90ngVWRR6826r8/6qtbfPEAr4458KeOCna3M6Z8lFfQg/7JzLz
         5A++15NLrMtp80SnyGz/oWfhO5swXHw1RBOjTbLqZzn6/FA/2VwimqNXqddtlKZbb51/
         z1AxV8yps+ixbFDYBbrLxiLK+VUfrgBjYr5Ubg6ofABLaNrpN9TCfTs/8tu9BDKvMgnY
         0IvKEytLwCACVlCkz3udZN0Vr5s2MdSXbByY86SNAjyNAcRcIRpbAysvChAl5dTFBE+5
         AJzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLut+KnADSUVERyJJUB0vDX/1CwqyEaZP5NevANrTCo=;
        b=YiSt4c9RqSFAwYZKsRTi4bnTMORqPK+VT2He+PyzXQ2JX6kIAm+STFl6xMl5YLPAhc
         Xbhn4y3Y+ceDBApFMFIkjXwo4IiXhN7ZvH7ZT1EWKdHSA3BSnc+7j8SiWWjhrvgPZPhI
         q3ZO+JnFj/FHp7NQNvGFdaIgI1zBYduC/qgwXQIF7Ie3iRnXvjvCvw3A6Uq4Bt0L4Jyd
         Z3LzZU2D7A1cm9fnPkV8ysBsjW4fiw55Su2j+Car43YKpdOM48MlEExkG+aYp+Y9xZqp
         r3O27FFYonP5vQMFN9bvY4xf4VA/IRpQwI3AtdfH7zD0ib0p8eBWZmSHC3roQDRZ7hXw
         crNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLut+KnADSUVERyJJUB0vDX/1CwqyEaZP5NevANrTCo=;
        b=oVPgdCBT8LYX50DNyxY9s0mUw6aO92uV4Slh72GINAMkZ8maL6t6dtRnZu0JOZln5V
         bRcKt/zQXOy2qIRVEiR+kjTRdS9n+5EWtDhM/54F4GvqrBl0uXVDtE1eMCqOYi0Ghqtz
         BanHeFhdp7lN8/QG1vHeWIE1Qk8F1ch1uUK7dH0lxPoV8Bd5NHqdFhBMOEIhgPoyh2Ze
         LLcx/7aSs32htlGu6z+GibmoPdyjSSwtxYLs1Fy3XLZ2Yp90gnprAFKkcrIk/rjgumuy
         KeUq034vy9VcYJZB+KjN2GTGLDeIF2idoJx+Ox6Fzjhy6Ij232TQZc+JssXvRqaAWGhj
         /Oow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWGJzKigrnZftW2vHFhSER4qrF+i3bwFs9yisLEZ2B/U2cQovwt
	XKVbhQv8tE1zVQ3QDM6xppM=
X-Google-Smtp-Source: APXvYqxM1GSGoBMgCLj9li35Q4IyZqbxJ+l0nRjL/TiFu5BnyV1w1ufAw/K1bP8nULaHS2Pfy9Xn3A==
X-Received: by 2002:a81:7914:: with SMTP id u20mr40876718ywc.230.1563768320854;
        Sun, 21 Jul 2019 21:05:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9a0f:: with SMTP id r15ls4983161ywg.6.gmail; Sun, 21 Jul
 2019 21:05:20 -0700 (PDT)
X-Received: by 2002:a81:af52:: with SMTP id x18mr42415341ywj.289.1563768320533;
        Sun, 21 Jul 2019 21:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563768320; cv=none;
        d=google.com; s=arc-20160816;
        b=baRTf9oQueoTIWSndhxknUjkwhMt84+6g89yutbbOLMC71duRiNEQTyj9x9E6oWaO0
         67a17yqOQCYkGdQWTJ1qYalkoh1zIONQQR3Ino+zcOVSiDMR+rcmtsYjVoZVl274+4mS
         cE6V4aK/LOBuLrKrh6OIsF9+jRp1duBmaDel5L8x9Ced0XB0M1/Xa4RTiw/WphNwk2HT
         oRGFOY40tG5E8r9Qe65OUMxfBAXywBRp9yJlsLriLYQIzzwZ5eQFtaAH7VVLgnqdATGz
         /RFxSd21aeqEdxkdwR+stbCOFMK5fQJDCyvwsH1adtROwMOUvucKQQ5Nn9pW4m8zeIjO
         yGow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=wq7DBkdHgBXxblgVfGylp4K+2sZn7n+C6pE2nNGDJXo=;
        b=qwNPvQH4yZJe9C+I2Zbx03hgJGzh384gWMaJUnbs6C3gJDxnx4DaP+CCfC+LIOU/ZF
         dLoxHAscqdK8N2SDrd8D9Pdu6GxIGb8whqqmRIjjXJsJGYUgj+VXtpoZsJKlzZPCOheh
         VsNoQuWkK5E9vMMDlMUY9AWpMAIQ8eBHqQk2YRpVzDC3sP69yJzAL7j2WZPrTWhTSu2y
         QLkeQaZGsY9NLsSePtHaVpW7ud3z+edh50I7VaPGEvAVYD2Clv9fVm5I8IO+2bB/Ywyd
         S/PCROfbtwiTYofsh37q9ZL/WFe/GEZnVLFrvBcEGJzec0xL4hJQ8T6IF4HEt9Aeo1Pn
         GqJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id d16si2063840ywg.5.2019.07.21.21.05.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 21 Jul 2019 21:05:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45sSgY228dz9s4Y;
	Mon, 22 Jul 2019 14:05:13 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Tyrel Datwyler <tyreld@linux.ibm.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] PCI: rpaphp: Avoid a sometimes-uninitialized warning
In-Reply-To: <20190722024313.GB55142@archlinux-threadripper>
References: <20190603174323.48251-1-natechancellor@gmail.com> <20190603221157.58502-1-natechancellor@gmail.com> <20190722024313.GB55142@archlinux-threadripper>
Date: Mon, 22 Jul 2019 14:05:12 +1000
Message-ID: <87lfwq7lzb.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess
 record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Mon, Jun 03, 2019 at 03:11:58PM -0700, Nathan Chancellor wrote:
>> When building with -Wsometimes-uninitialized, clang warns:
>> 
>> drivers/pci/hotplug/rpaphp_core.c:243:14: warning: variable 'fndit' is
>> used uninitialized whenever 'for' loop exits because its condition is
>> false [-Wsometimes-uninitialized]
>>         for (j = 0; j < entries; j++) {
>>                     ^~~~~~~~~~~
>> drivers/pci/hotplug/rpaphp_core.c:256:6: note: uninitialized use occurs
>> here
>>         if (fndit)
>>             ^~~~~
>> drivers/pci/hotplug/rpaphp_core.c:243:14: note: remove the condition if
>> it is always true
>>         for (j = 0; j < entries; j++) {
>>                     ^~~~~~~~~~~
>> drivers/pci/hotplug/rpaphp_core.c:233:14: note: initialize the variable
>> 'fndit' to silence this warning
>>         int j, fndit;
>>                     ^
>>                      = 0
>> 
>> fndit is only used to gate a sprintf call, which can be moved into the
>> loop to simplify the code and eliminate the local variable, which will
>> fix this warning.
>> 
>> Link: https://github.com/ClangBuiltLinux/linux/issues/504
>> Fixes: 2fcf3ae508c2 ("hotplug/drc-info: Add code to search ibm,drc-info property")
>> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>> 
>> v1 -> v2:
>> 
>> * Eliminate fndit altogether by shuffling the sprintf call into the for
>>   loop and changing the if conditional, as suggested by Nick.
>> 
>>  drivers/pci/hotplug/rpaphp_core.c | 18 +++++++-----------
>>  1 file changed, 7 insertions(+), 11 deletions(-)
>> 
>> diff --git a/drivers/pci/hotplug/rpaphp_core.c b/drivers/pci/hotplug/rpaphp_core.c
>> index bcd5d357ca23..c3899ee1db99 100644
>> --- a/drivers/pci/hotplug/rpaphp_core.c
>> +++ b/drivers/pci/hotplug/rpaphp_core.c
>> @@ -230,7 +230,7 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
>>  	struct of_drc_info drc;
>>  	const __be32 *value;
>>  	char cell_drc_name[MAX_DRC_NAME_LEN];
>> -	int j, fndit;
>> +	int j;
>>  
>>  	info = of_find_property(dn->parent, "ibm,drc-info", NULL);
>>  	if (info == NULL)
>> @@ -245,17 +245,13 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
>>  
>>  		/* Should now know end of current entry */
>>  
>> -		if (my_index > drc.last_drc_index)
>> -			continue;
>> -
>> -		fndit = 1;
>> -		break;
>> +		/* Found it */
>> +		if (my_index <= drc.last_drc_index) {
>> +			sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix,
>> +				my_index);
>> +			break;
>> +		}
>>  	}
>> -	/* Found it */
>> -
>> -	if (fndit)
>> -		sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix, 
>> -			my_index);
>>  
>>  	if (((drc_name == NULL) ||
>>  	     (drc_name && !strcmp(drc_name, cell_drc_name))) &&
>> -- 
>> 2.22.0.rc3
>> 
>
> Hi all,
>
> Could someone please pick this up?

I'll take it.

I was expecting Bjorn to take it as a PCI patch, but I realise now that
I merged that code in the first place so may as well take this too.

I'll put it in my next branch once that opens next week.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lfwq7lzb.fsf%40concordia.ellerman.id.au.
