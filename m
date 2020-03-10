Return-Path: <clang-built-linux+bncBCLMHO6ARMORBFVKTXZQKGQEXE56B3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A48B17F24C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 09:51:36 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id p3sf167002pjo.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 01:51:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583830294; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSj3fflVr7cwBYBVtMkL3b6NodBa2pCSovGgRYSfbQp4lvV2b8c4P9RKUeyCqBEQFy
         +xu3C24CKuV+XdxG3oiONH/NA7KRiHs/ipc88Y+oIyeclHtNEaIHZTll50hYsfBFp/E9
         JeJW1VH28RycS4Y7E8GwuZrX84eB4EVJeMgQPO/Xuv4cYIQNJhB7TZjdBbZsB4zuInqT
         EbTOo777iz08SabJKjweFXZ+vuLrH5US/0WZK1i3UnvdFtRp9puE+k061jdqBb0NvjRH
         7+RTlkZozbEfqwetpR0+FGVLhcEj7CVvkymtORq+0gM9Co/QRuP/L/GZihUJNC77H4/X
         gYxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:organization:in-reply-to:subject:cc:to:from:sender
         :dkim-signature;
        bh=6RLFaIFzdnkWYfMejVlgcUAJtvE7vB7PXAgo+nfZjTs=;
        b=SeqI7UBjOID4xDLcisYln9Tass/JCeRNKejtoISxLZIcg9VxezYDw+faPRUyg11w1r
         nsEeXYQpALhxFfjMAItV443i8n1oueLfxbyKIj2XMQ/7yxH0q9oUSsWBoP9P3bH+EKxu
         S7V0GidMv9I4BAsMat/u9m9l+O4BCY4BXvpgf8RhqviViQlJtxLtcN+NFnsHttaXxlAa
         BQMpSg5w708EJ9XDmS+IF+yU1H5okm+1Srre1QMHZ2fUoNwNpTHjKvOjCoOOyrG80gGl
         de4zT+VO5y/TjpM4lixJAOeG9n5ZMfEacYy6svPVSJwlgC7HEHs/9oNVMHVYvsUDbbAE
         kWDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6RLFaIFzdnkWYfMejVlgcUAJtvE7vB7PXAgo+nfZjTs=;
        b=L1MTbxMpckH1C5c8qekI9GkF8sNZHhsZqMY5tugukSxKzQn0J7uSW5YFGbNw96w0Ut
         +q4XonUQqxvPTI8rZjxRZWjN2WhdhmtfZXcEbd0T53AobNDlifg+ffGNgsibQbF39/zT
         eoSbgBBb19VMMQpkFML8+1EQtj1PV2QFTlTez2MnDydz1bOd5GVS76zsqi14CucpTHZb
         5hp1QIjK2DRqGi3krHUjjzzYq9/QeZNp6W3SSBf4OCQMzuNlPEsKuo29imKTZfC47dH/
         4oecokjIJBZr4cLd/Q4RqMJptnX84zSq3iB8burHZ9c1D6Ydvx1HliEgELNNcbTQbuTj
         OT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6RLFaIFzdnkWYfMejVlgcUAJtvE7vB7PXAgo+nfZjTs=;
        b=k71mdf5RI/044hiDrR6MbVl0cGiT+BIpNjBQ+f5SjaIT8Xr0IsSoUQI575jjLKxZky
         DlrNXy5UTIoevVNLN7fQuD7FI0FeskKeHNkrxUHF+MsJKZmrYjaXZTw2r0MKEIrkBZ8S
         6N/R5eBnO4yyPBkLQzrriCoGb80woVZivZAZc75RYqZE/inJoW1JFwnrxvYM7fUN5ebV
         3e6LDPLBJboITkDMs/Rokzr1x54wogNOh2+dfllB64mN/l1/SUoNMK5UAHznkfP9oDY2
         EnbHZE9RCi+FKuRwojmrp5BgnCsC1ngfQq4ByBPSlgJhkpgQyaxisRvuOqjJCXVrJ8Fy
         YWjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3cHOoYBRja1zqStaysgThZGKTCv6Roz0nScBW662woWWn2LInX
	2I33dWrga6xsO1+000h2rnc=
X-Google-Smtp-Source: ADFU+vtCZR6pYoCSEqTItGdHAxKtki4uz7oFe0Lhf63YLK6GbBSt/0NbayyVMe73ljkbfk7LY1h30g==
X-Received: by 2002:a17:90a:25c8:: with SMTP id k66mr653449pje.90.1583830294272;
        Tue, 10 Mar 2020 01:51:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls4605336pff.0.gmail; Tue, 10 Mar
 2020 01:51:33 -0700 (PDT)
X-Received: by 2002:a62:cf47:: with SMTP id b68mr20698173pfg.249.1583830293828;
        Tue, 10 Mar 2020 01:51:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583830293; cv=none;
        d=google.com; s=arc-20160816;
        b=oHMHuimIGo+WPkHTaaRrMtHANkABi4aYfSuAb6UpEI+Q6my4CaDBRaEVtqhUoYwD9O
         9t62ppx7PvwEiciF4vGATyTeEZ2WpBO/dgrL1NAc7ltKNzcJrZk9xczX14nnA2ePQ3n9
         0E9To+lq5DHioAqTD2SnvdDkYDKC84Pi27VLmpsXa27GvaBdqoLE42xeTGMfiYCf5rlJ
         nMXP+f++22BoT/ab5cRkbuBF6Pe+XVAJdeOCKL6HDE5Q3SO4Z0dBxpZTkJgyxrGm0l9g
         i9JX1S8ra4IxerAV0YzYuIBh43mS/KokagBiJhAMELOkfasiGHHK0KbjqL43oyWwznGE
         XgGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from;
        bh=83RW6C3t9CrnETAXxH8+55+RtMtGUf2zDpZKaUp12Dk=;
        b=eq8yJkECam012u6mbkKjop1HY39MuBwpAjfz4OTAPn128tcTzmGQ3y5MkDkWrzC6wu
         9vtPdBfCRUq7PT/fGM1CPamfQxiOAyVteghsyc2y93+jwH6nAuOHUDFrEaDDaSuZWNl7
         uW9OyUkgM/mMQxrJCT1Tj9DT2CTZV+c6R74ybjYxBfglygrenoYsYZSrLtTCZsZIVysM
         419phklOfGrCEoH4fbyH5nN4/LRH7V1hTTFqHwa+OnKFK/1ZRThSPuaj0frrPxnLv6qq
         Y3/UB6GGWZjFZHC7x2tjnSn26cGfQ5A2D+lPpE2qfrY0Pb7nq/KAVFR7SYS1HO+oEtqf
         TS7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id 74si338588pfy.0.2020.03.10.01.51.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 01:51:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 01:51:33 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; 
   d="scan'208";a="276872523"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 01:51:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [jani:device-info-inheritance-v3 3/19] drivers/gpu/drm/i915/i915_pci.c:212:2: error: initializer element is not a compile-time constant
In-Reply-To: <CAKwvOd=eHp8ZkS4B-GY9fbaUXS5wNxZQbU+eV6wbsXQ_69bieg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <202003060916.RI5pROBS%lkp@intel.com> <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com> <87k13ulyho.fsf@intel.com> <CAKwvOd=eHp8ZkS4B-GY9fbaUXS5wNxZQbU+eV6wbsXQ_69bieg@mail.gmail.com>
Date: Tue, 10 Mar 2020 10:51:29 +0200
Message-ID: <874kuwoani.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, 09 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Mon, Mar 9, 2020 at 1:32 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>
>> On Fri, 06 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
>> > Based on the tree, I think this report was meant to go to Jani (cc'ed)?
>>
>> It baffles me that the build bot burns resources on building random
>> branches in my personal repositories.
>
> It uses a branch naming convention to avoid testing branches:
> https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigger-kbuild-tests-on-a-specific-branch
>
> But in this case, it seems it caught a build breakage even further
> upstream, which is valuable, right?

I guess, though I usually only use it to share some half-baked
stuff. Perhaps I'll also start using it for build testing some of the
more obscure ideas. ;)

>> That said, this builds on GCC 8 just fine. Is clang not able to do this?
>
> Places that require integer constant expressions can be very subtle.
> See this recent example in i915 for example:
> https://github.com/ClangBuiltLinux/linux/issues/918
> Sometimes reproducing also depends on some configs.  In this case,
> it's not as I've fetched your branch and can repro on defconfig.

Yeah, reminds me of earlier issues with GCC and Clang having different
order in certain checks and optimizations, leading to Clang warnings in
code that GCC just optimized away.

> This is definitely our bug: https://bugs.llvm.org/show_bug.cgi?id=45157

Any idea if older GCC is also limited in this regard? What versions does
the kbuild bot test?

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/874kuwoani.fsf%40intel.com.
