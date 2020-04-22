Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBE5WQD2QKGQEVZTPTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E61241B3DF8
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 12:23:15 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id n17sf610398wmi.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 03:23:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587550995; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8ryE0S5FqjkZ86o7I4DbQj6DpNmW+L8lw6kHB6lR94BPjfBYhYHItBOPpoX0j/2BE
         WTNQG8qF5GPmtg99Lwu7jv+IFk6zxb6hm0hNzSsxND7BMRklsPsqD88oqQ4F25/zKV8Q
         4F6iDUEGEGZXuYhQq/81vUFE+3Do54MCtXLTyCQ6m8BA4cThgH6IVDFkOfHCNDJGXKvC
         B1+BENx++wc+0/CrPXFOiDHwQzMMIgoQid1cgPA/VV1t5iCc7bibDh64zVr7HHGzUEWZ
         d93pn+nkUsl1MiwBeBAiuziLXCTCNir57WemdCScRYZ831UUsG3ud/bG7TpP4MOvfrXr
         68ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VDkcEuI/8cxJvHrHy5KatEIf8+I+XIoJH82wwbyjLEk=;
        b=QHjUywzVklETaKfoBpFymos68M+HBNR1z7yS9by8/Y7EbOPNMIBrDqPWqVqn9PG0B8
         orEj7Db/+ZjQKwJPVQMKkUBZ8y9VZMyVSZjvHGXIeVQ8o3af+s16lN3i4KnwRW1uZn2w
         Wsf+lNc0mvgKvzdRAD/HTNaUW7hBYesyjGWZ9yPU2dZpFLopl+2DKyMCWdjPQoYS92ul
         u/e6kTqne+XzmQqtDM9eHOIhTGQ2dsYm4fSGeELa93h/sNSImDA/4CJAEILmJrmAss09
         JFbES4KDj9fr/LrXpTMd25zIs1eI+z1Q0tKY0LRhhJwn+yvCj685c+3sAsmxWNFDtnMD
         b3aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=VMGpvZXL;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VDkcEuI/8cxJvHrHy5KatEIf8+I+XIoJH82wwbyjLEk=;
        b=XHzRNWfKJXhNU9ITg4w/IxHz9ZC8u6dnAzk1kYptqRCUnQjo/KgGpKb66JK5eqVluV
         4nVIi14y48z+q0Kp1TA04Zarf4Z4ujcqaEuaOL/QGnOnRwbZaEn53G8CdH2epVU3pdhz
         /+O8a6pzM9WHoWFncdIcpLYXjI1FPlktXR1uzwPurts+T9yHpDpAJgYaCV1mTmA/heM3
         fUZFyHupfbcVk/xmVAg7spO4sq8wA5UI4vEOSiG9EDdWQ1NHvTYWUBXrA2EKeObUa/Bv
         P4gouRAxxl+QxscHfcXuy+WEZSeSGOHnuJ9U3AyaZ8ytIPXDa4mnOwBmbYKPYqAMYQf8
         NNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VDkcEuI/8cxJvHrHy5KatEIf8+I+XIoJH82wwbyjLEk=;
        b=sw6arWIFh6NjqyqZ+hXjqgKEZOV1cuo6ujko7nNgcaIeQLQ9cPmb9r14q/XWyeExY7
         R5PB8buMUoDvNzBTd/ZnogGYpYiQOlWU9RYB8Wbxfhq/Xc1N4ZK1Q9UImNBmfBnmU/zT
         69+oELyXEHN3ZNAnrIfVgBW2Ojebvp8busHkrDUipfk12cQWrU+8Nob4qjcjRHNcWK8U
         /GUgL8+Q6P2M6cUIVB1FfOfJeBV2TE2kSK73G5ip/v0LVkJudSJizaXqs7XUyJm0/Kew
         1YCeIsimoh8GNAvBdVJo0j1RcDb+yoPg8F8taINB2c7J8k/YplQdMExTALp9M6qAbLPJ
         pMOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZawnmUIvqoBtuPH8T3Du5xtFbh+HFIvTIxITBMsKpp+j0QZkZR
	sr6Mp2OnYJdQq3FqC2qs7kk=
X-Google-Smtp-Source: APiQypIduBV7tphAtbnLii6+lWIU25+RGLBoXZ8FDYhGNAgWXPMPe066DGGyC6esFvqnTIU9VZl7KQ==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr27908491wrn.176.1587550995607;
        Wed, 22 Apr 2020 03:23:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6cc7:: with SMTP id c7ls1163860wrc.8.gmail; Wed, 22 Apr
 2020 03:23:15 -0700 (PDT)
X-Received: by 2002:adf:e450:: with SMTP id t16mr31078421wrm.301.1587550995147;
        Wed, 22 Apr 2020 03:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587550995; cv=none;
        d=google.com; s=arc-20160816;
        b=g8A5p3hxHWePopjjGrS2cbaj5kmudekd8SZwq8PcNAhLya0JkYXdQ3AKPJmU3qvrfz
         kV4t5GAIYNRNsYef7/kWYzqTOly9kc0pDOIicHH7eUeHn35Q1waADAvxQKYdgD2NAk6e
         lm4/ITwcSj11Jtz3ek3XzLET/cdYrcvUL74FgNvYI8NB39WzreIdIKB+GR8YM6mWxb4U
         hN/iQPN2bCjCBkODdNavckvgYUXD3PsQNwZ13zAG2OvDQ8z5O4XhfOIJHMKU9Avqug6A
         F7E6g+AX2odxWDWo6eCaWim82UJbMHAvJkPk5ioVC4UoFDVGHIrm+Sc+f5yjqfXckNhV
         iRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HDuUABhmmUgyzWxWyDZN0U/l9ljHbsLtT1vuHABexv8=;
        b=zdpgu65gYX/QyBB2O/OrBHYQdbMTMevINnqJfN8V3RFcVkHcXGoYzV3yILyRpXxfmp
         DR0CjQ94zymeKjOIKe2D9CZ6amkFDMXHvsNxFq5Sf9GsJ669t2mCgJXMHcBNrs/YX5FD
         yAv2PdHkRp8qziWlhGVgtN8ciP677Xq5yDKDVM7vTekpQ276Ga7FKJcAMyhKu+9UD3+c
         KFf4vJldQEd8HEIMQRWviHOvHTsdHIkiwAwfWXKs4sbavrubLeNOeCXXFyFs3UfDRqnB
         5gveiejkw0z9w0pK1f/UhdYmk5lbdtYiT+sv2mLfx+8zOUmZ6PS3mIQn+5eV3j6P4I3T
         t1cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=VMGpvZXL;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id u15si328812wru.2.2020.04.22.03.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 03:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F0DC100B57FB20533079C8E.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:c100:b57f:b205:3307:9c8e])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 62BE41EC0D3A;
	Wed, 22 Apr 2020 12:23:14 +0200 (CEST)
Date: Wed, 22 Apr 2020 12:23:09 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422102309.GA26846@zn.tnic>
References: <20200417075739.GA7322@zn.tnic>
 <20200417080726.GS2424@tucnak>
 <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=VMGpvZXL;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

Ok,

let's try the simple and clean fix first. Nick, would that work on LLVM
too?

And I hope this will remain working and the compiler won't jump over an
inline asm and go nuts.

Thx.

---
diff --git a/arch/x86/kernel/smpboot.c b/arch/x86/kernel/smpboot.c
index 3b9bf8c7e29d..06d2e16bedbb 100644
--- a/arch/x86/kernel/smpboot.c
+++ b/arch/x86/kernel/smpboot.c
@@ -266,6 +266,13 @@ static void notrace start_secondary(void *unused)
 
 	wmb();
 	cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
+
+	/*
+	 * Prevent tail call to cpu_startup_entry() because the stack protector
+	 * guard has been changed in the middle of this function and must not be
+	 * checked before tail calling another function.
+	 */
+        asm ("");
 }
 
 /**

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422102309.GA26846%40zn.tnic.
