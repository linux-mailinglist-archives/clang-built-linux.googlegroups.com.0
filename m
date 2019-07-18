Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBKUEX7UQKGQE2XWBTVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B03E6C3E2
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 02:49:48 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id s145sf11921861vke.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 17:49:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563410987; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZR+OuAk4r6v4ltr0Z3U1j0/729g5MrKCtI3ptGrVj0Ctb+Qt5QnPScxl13Wm1ijE8y
         ow6qLItE82UsAIoukQrDe0x/N+erVCaenLeeNAtu/8d1VkFxSfZl3qBlJEi+uPNAKhzA
         yknRZE+apBqCojwmtPq58Lt1huuqu9hmhlw95KbEpxsZQ1ZnIO85eXrETa7ad5Iqpmc6
         zTEFAfugHN6anRvACDn+K8u9S9n5z/CGfKc2d0YXpE+l/vqENyYC6CbG2rpEk8a4azzV
         EInJE6K80oK2Tfm3Z+kCyD6Sylezk+8jBHcRzG6LdIAuIplL2KY+zR/Htto9++vr9pMh
         K4uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=Hf4xaS24bQnM/cBkVn0kQFBDAd6hQy2FhkM799ysXgU=;
        b=Pm7n14AP2UyEmmU4W7+sMPIqsVnQSRcem9a2hRJaDMe1715nKnoSvbJzK2EClSVXfh
         xmRAwHgQoeDc0SWRuJvD+hI6Ju+WD6Rdg3aSZURXY1wAOmRf5eDVhDqimoxCqey9Eql2
         iXak+yKdgaZeqZJufmbnOvrRM4D/hoclDOaibmONVkXjQL6J+l0uBUT1J0oqbvd7EmSh
         yVf0e8ykzkdv4Y+mx/0ipnUeIzFaxu0oRVNMklOXcfU/UwzIk+Ttb9CMcPLGnHYVh4TH
         DQafbM//NbUwBcCe4jQXLfUNxHW54IgCCo79XbEGHe+CTrDEpNAg34jitR2Uz/nO6CKL
         RRkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=GZjJVzEi;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hf4xaS24bQnM/cBkVn0kQFBDAd6hQy2FhkM799ysXgU=;
        b=g6rGSpzSJx1g22IBP0U7qLIVunWwWzu0gQASgE8Wyp2OfHlPLiRkH6kLkhmkTPKnMc
         KBZWGEPa98rf9V7uyAJ+8QFfJhOJV+pNv4ig6YkmTdwTzvsHP2SfXlxAZCnNvO8ifOEg
         rTQrVmajLy0NNDNJmCeffZFYb40X+Q+jLy0PzXbBfEug5MiVXLO9wd6Bf4ejDzaa6pY/
         3KVeJi0AlRwtfA7w2rCuuRYoiEwppVywAjhxWpiCp+w08V0Ea46H7C4EeZ1BB7PKzOeC
         UGdU64GPzhlQGWKQlUtp2EhOFA5afW6IeMbIHi7Pz1Xpe5n3nBK+TiPKvZoUkfZrT5v1
         FZ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hf4xaS24bQnM/cBkVn0kQFBDAd6hQy2FhkM799ysXgU=;
        b=IVmd8s896Wvzdfj/fGlxl3ucstpODCQ/Ih1DRAyTCDwDHNgOLz/BjfkfgI2hLNCLrq
         v8wyGHJDMnDADgB7jB4UEAjtEMdJI9eif1WQF6cDkl9/VMxM7JFMxftZq/ZE8uKwYm+F
         fHEZ68alQ59I8ZghILpz4rgpbXiVsax4niXneMpHJ9+RXLYAjndSFRLMiEoSndN6/5WI
         W1cxUbuyjtfdYk5whsuLdbazbdzhWCT9dx0IgFvqzcHhYNojBTZVfyzNh8E/SPB+HEyN
         YDQO0ALxXc6K+1SpMH6wBwWU0/jzCqCQ1UWJKtliNHui+3yEbRXD7AheRZP7FVqKKeUX
         hHVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX92IQrqgk9SIQl/B797O/qFtILNMavrsZZLpRICf/q1cThW0fc
	wUXeJm+ph1PmnITanqm5Xbc=
X-Google-Smtp-Source: APXvYqz7M7FYR+SeriFxBH4/Eme9+z9SZAFwyE4c9bHYXK+qsJi9sTimcyai2mB5rcfBD7ESCu8Euw==
X-Received: by 2002:ab0:142d:: with SMTP id b42mr13369433uae.124.1563410986833;
        Wed, 17 Jul 2019 17:49:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6844:: with SMTP id d65ls3359134vsc.9.gmail; Wed, 17 Jul
 2019 17:49:46 -0700 (PDT)
X-Received: by 2002:a05:6102:8c:: with SMTP id t12mr27823798vsp.143.1563410986562;
        Wed, 17 Jul 2019 17:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563410986; cv=none;
        d=google.com; s=arc-20160816;
        b=NaD/Hr5AyvzE96z8cBcSTH3TxcdYvCpX98DIpMysx4Bz9zgoUf8qEhgeSwFY/BBVhq
         /Wzi/nvDKDid/OQs+0sKX7v1QzvFlAhxrPEScE9/dKm6AuubkNlvRYB0n14VrWBDUuNt
         1f9mp0OYH8UH07NYmIuyCIQCrSM7yICvx2xOM8gfzs/JKkS9IMbB2DqxUSWKl65YStZo
         Dc7kOpLlFAwn5lu9SNZVThO4THZX4Ved5fbc+Cfgdp/Wpfgm1AsYgu7JFUa9qbFNnGVN
         LTRpCsQmznjfFjkVBdK+S2Coj7CoDFuENz+JkR4GLGtm2SyTUO1bDaF26b0GtvKsn6GV
         TrgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=7K9LFXNQszPVt9oolCuthJEpelngJlWY3awPIGBoIrc=;
        b=u5BtlRzv654cjbE7gRLZAa678ala3zqk3wLm8GqxRvaUBGigYx5tT3BbnKU2Tf9rN8
         d3PZhRjnNBy+QtPTGGKnY9YWV+JrobNUFR6JA6AaAZl5XRC/irIhj+xyK6fh+O1YxK+5
         FNYBPubYsSsO7M46Okqdh9hYcotszreE2TLGa4r9cn38tymVGMc6DUWvhdIgOOoeh94Z
         J2GthTx+axMbzYbO8BZLu+quCcnhdBILfpXSCsMgPUo2bGLRgUcGutURNG1qjBACtmPO
         ScHlvweemCnhy5IN6PNuG2RG7rkByShcSLHgKi6LPdXVIbl3zZ71QTcwX3Txb32Nf6W9
         6lew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=GZjJVzEi;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id z67si1014971vsb.1.2019.07.17.17.49.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 17:49:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id r6so19087809qkc.0
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jul 2019 17:49:46 -0700 (PDT)
X-Received: by 2002:ae9:f101:: with SMTP id k1mr28781291qkg.337.1563410986046;
        Wed, 17 Jul 2019 17:49:46 -0700 (PDT)
Received: from qians-mbp.fios-router.home (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id v84sm11985703qkb.0.2019.07.17.17.49.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 17:49:45 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
Date: Wed, 17 Jul 2019 20:49:43 -0400
Cc: rafael.j.wysocki@intel.com,
 robert.moore@intel.com,
 erik.schmauss@intel.com,
 jkim@freebsd.org,
 Len Brown <lenb@kernel.org>,
 linux-acpi@vger.kernel.org,
 devel@acpica.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>
Message-Id: <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
References: <20190717033807.1207-1-cai@lca.pw>
 <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=GZjJVzEi;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Jul 17, 2019, at 6:01 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Tue, Jul 16, 2019 at 8:38 PM Qian Cai <cai@lca.pw> wrote:
>> 
>> Clang generate quite a few of those warnings.
>> 
>> drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer
>> treated as a cast from integer to pointer is a GNU extension
>> [-Wnull-pointer-arithmetic]
>>                status = acpi_get_handle(ACPI_ROOT_OBJECT,
>> obj->string.pointer,
>>                                         ^~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:458:56: note: expanded from macro
>> 'ACPI_ROOT_OBJECT'
>> #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
>> (ACPI_MAX_PTR))
>>                                                        ^~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:509:41: note: expanded from macro
>> 'ACPI_TO_POINTER'
>> #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
>> (acpi_size) (i))
>>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:503:84: note: expanded from macro
>> 'ACPI_ADD_PTR'
>> #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
>> (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
>>                                         ^~~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:501:66: note: expanded from macro
>> 'ACPI_CAST_PTR'
>> #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>>                                                                  ^
>> This is because pointer arithmetic on a pointer not pointing to an array
>> is an undefined behavior. Fix it by doing an integer arithmetic
>> instead.
> 
> Hi Qian, thanks for the patch.  How do I reproduce this issue,
> precisely?  I just tried:
> $ make CC=clang -j71 drivers/acpi/scan.o
> on linux-next today and don't observe the warning.  My clang is ToT
> built sometime this week.  It looks like drivers/acpi/scan.o when
> CONFIG_ACPI=y, which is set in the defconfig.  Is there another set of
> configs to enable to observe the warning?

# make W=1 -j 256

With the config,

https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config 

> 
> Also, the fix is curious.  Arithmetic on pointers to different
> "objects" (with one element passed the end) may lead to provence
> issues due to undefined behavior, but I would have expected some cases
> to uintptr_t, then arithmetic on that type, as the solution (which is
> what I suspect ACPI_CAST_PTR is doing).
> 
> Further, you seem to have modified ACPI_ADD_PTR but not ACPI_SUB_PTR;
> I would have expected both to be afflicted together or not at all
> based on their existing implementations.

Yes, I thought about that, but ACPI_SUB_PTR does not seem used anywhere, so I thought maybe just start a new discussion to remove it all together later.


> 
>> 
>> Signed-off-by: Qian Cai <cai@lca.pw>
>> ---
>> include/acpi/actypes.h | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
>> index ad6892a24015..25b4a32da177 100644
>> --- a/include/acpi/actypes.h
>> +++ b/include/acpi/actypes.h
>> @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
>> 
>> #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>> #define ACPI_CAST_INDIRECT_PTR(t, p)    ((t **) (acpi_uintptr_t) (p))
>> -#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
>> +#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (a) + (acpi_size)(b))
>> #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
>> #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
>> 
>> /* Pointer/Integer type conversions */
>> 
>> -#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (acpi_size) (i))
>> +#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, 0, (acpi_size) (i))
> 
> IIUC, these are adding `i` to NULL (or (void*)0)? X + 0 == X ?
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/73A4565B-837B-4E13-8B72-63F69BF408E7%40lca.pw.
