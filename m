Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBQGYTT6AKGQEDKG7LEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F6828E4CD
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 18:50:08 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id r19sf68933wmh.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 09:50:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602694208; cv=pass;
        d=google.com; s=arc-20160816;
        b=JYghKl/vnxcStpM7JFNE6SyY93hcQLIUU3rc8EYWhEWI5ld3FU1tCBUM/jSkSR12+F
         tZPbNnf9Bk0wyjn4b7b4lIqUB47VU77t3EB3GQ7cLNsifcibgjHO/DCP4pV6SsXmpZzj
         pvd5VAuPwcACsndKBCjK9RlWOQRhjKVRMQdWXZHh7aDaSA0d619x8H9do5m1GREc4jpR
         Ae4Su3ZaYDFIaw1rNgoSgHl+QTaBuCCaCEpeZfAyYWmKeQMKRG4txl5CebG5fz/a+XSo
         viewHKOoGqRhk3lpA9NWX4IedHa0fU3ZjJnHixG1A4jgnkiJH3D90L8DD62W47xMZUpB
         zWJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fujHgFwXTSV7Lt+vqyiWoxtxEtd8Vvdb8Q9nRWyLz7A=;
        b=0l+xizbnNzyCsVu0eaqZ2bqnc02B97JzeFstCRCt6povXSqr0kelg20xvf+GzBHQuL
         XzqsNj/OzBw7vqK0zhGAZBatDweE8TLJL4fziHD2dCNv2qCNpj8Y+Za49S7mNw5ViFaD
         ITc9jsDY1anR4PFSGtGmSxoUzWhIGTgVvNeX/wwp/eVR6QJAKl7gTCvLEIhvuRHrSnGV
         XwMysQkn0AsMTGxLbcEyLab7uW+zCXTWmmiq0ij2RE77MEE8s8KIIoDYo/0UCI/NvheO
         h3i0FwUmTpQevmVDd++qUzjWPgp65fA0jfCre3BAVYKaGHTkC3yTH/plbVf4elV4tv6+
         PkTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q+bPhxgY;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fujHgFwXTSV7Lt+vqyiWoxtxEtd8Vvdb8Q9nRWyLz7A=;
        b=CyB5VUYWi3aDeXhlH/5/+HTOEN+yycraEEjyqT4hgJBpR44t8JVkDFA0QhUd6J6BUl
         kvglKz+aidZ7PaiMe8c0pSwzXlZMl6VsLkfTdiXAf24SSZZGGJqVZ/97x/kGD6C6tDPq
         rVzobSzCcGx/6NhraA+X/UKEdStsbkq1gORFRda5S54NMsdNeMXH6sQBe8tf+n1O14b3
         I17vhqTrwiIpZg87b9FUETvEGVWZPigGIKj6Inr+Fefsm/5ojUr/Bh1l/UI8VX3snEfB
         C0pJrblkqjRRvZ2j2uzS6VrebCJMUpyTVn0Dwcpxzk7ViderVP5MoRkIqddOwvJoWFLz
         9rCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fujHgFwXTSV7Lt+vqyiWoxtxEtd8Vvdb8Q9nRWyLz7A=;
        b=QWSB39H7T6D5LkoVP/VrtsuFsE75KmcFA9P0vnJknP0AUZY2mCHYpxBgqKr3EogRaU
         AU1T4EVg0/tZaPRNPa86D4IQVPdBF/4eLqtYzXyIIYb+PU2cbSJOM2OWMx5UahZZ7OE8
         vD1pYMd9KPta+MRIQxbchaIUDWVASnsuDoXnHFayKjMlEP1j3KNBYRPfaG1QsNYq3C32
         dHLM5/FxBQMp0Q92+3WEjK6r9/QFL7DdtmjQu8+XIMWAVkSd2rol83UV+D0jyjhmSZlP
         3al4avBo1ULAUk8j7Wzinabc+9pFfCvehUa+ePb5fxHlVBdsRAK3RLMo/JKh52WgQ9EY
         LgXg==
X-Gm-Message-State: AOAM5329ugYEyqb3uj1S06SiOAV+kx79W1fEeEG+hp5Tz/kgdVqGLvz4
	MpxSavjeHCxaN823aNu3OxA=
X-Google-Smtp-Source: ABdhPJybF8d+7vgFsS7BKHj2w/oA3JsilolM0uzBucbjX/gdHrKfUq8Nmu8oscjtUquca661p8CUvQ==
X-Received: by 2002:a1c:c906:: with SMTP id f6mr339261wmb.9.1602694208444;
        Wed, 14 Oct 2020 09:50:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbc4:: with SMTP id n4ls36827wmi.3.gmail; Wed, 14 Oct
 2020 09:50:07 -0700 (PDT)
X-Received: by 2002:a1c:5685:: with SMTP id k127mr310662wmb.135.1602694207330;
        Wed, 14 Oct 2020 09:50:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602694207; cv=none;
        d=google.com; s=arc-20160816;
        b=lLsaxa85MtG0o5YAR4Lu/n0tYBaojZgr239nBZlxoinN3hPHZPNHguQ02paU0hyVjt
         gZ3FgsXG4h8bbXpFyGES3Q0oQ0Np7/puKQZIduNfL5wYTrxrnTvzFfvxqLbSRU9l1Hge
         G1ZgBFFQayDLC3FPkgZPBUWFl6uyk1Y3TX76axcGjgOU9AMr+GV+hoeGpbq5gvknaXQZ
         sy3yHZy5+cNaoWcLx/r/f7oS3QpdyoIJXOUWsUL8Ua2LYDe6pkrnGm2iW8B7t3lpy9w6
         c8UWfJTGdLybYGdKJxtzsKorJXQRAXnsG1XJULbdW+iOWTn3HWX64KTQmNAX/PxGMLeD
         MOzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=+kKooy8y3/ieceX7ZqDJ+1+nZaa9FZpK4qlfOAJ4xg4=;
        b=MsAYkDUq9B3dM0VRWxeBBwDpNOvv08AaehlG9mXfMaF0fMUKHBSdUWlMgc2afM2Bq8
         4osXYlFAe2dd16nqn/9VZ9JA+3Ab7T+FGqNX42QMLcy7A/rSYc37ol+BUEUSAL+QTjOH
         l0t+feUEiYYGW5ND0b9DoSENIqi4SfS+rCMIo8NVlC8T89asUhpgXzgoRhGbgPbMCuAV
         o1qLLPwaoW7oSxTy+58/0ULSGCcrALR5LyKsGPC6QCWsyAxvKa/gssKH6P6T8eU+wyVA
         5NtsgdQdGuOg2xUFoJsCxxgNUVe7hST6kGzKIkh/a3HJ7VvSwFsj5I1yuZn8LwMFHlTD
         i1sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q+bPhxgY;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w206si5239wmb.2.2020.10.14.09.50.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 09:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id t25so5757138ejd.13
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 09:50:07 -0700 (PDT)
X-Received: by 2002:a17:907:43ed:: with SMTP id ol21mr6121680ejb.279.1602694207048;
        Wed, 14 Oct 2020 09:50:07 -0700 (PDT)
Received: from gmail.com (563B81C8.dsl.pool.telekom.hu. [86.59.129.200])
        by smtp.gmail.com with ESMTPSA id c19sm44446edt.48.2020.10.14.09.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 09:50:06 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Wed, 14 Oct 2020 18:50:04 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH v6 02/25] objtool: Add a pass for generating __mcount_loc
Message-ID: <20201014165004.GA3593121@gmail.com>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-3-samitolvanen@google.com>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q+bPhxgY;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Sami Tolvanen <samitolvanen@google.com> wrote:

> From: Peter Zijlstra <peterz@infradead.org>
> 
> Add the --mcount option for generating __mcount_loc sections
> needed for dynamic ftrace. Using this pass requires the kernel to
> be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
> in Makefile.
> 
> Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
> Signed-off-by: Peter Zijlstra <peterz@infradead.org>
> [Sami: rebased, dropped config changes, fixed to actually use --mcount,
>        and wrote a commit message.]
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  tools/objtool/builtin-check.c |  3 +-
>  tools/objtool/builtin.h       |  2 +-
>  tools/objtool/check.c         | 82 +++++++++++++++++++++++++++++++++++
>  tools/objtool/check.h         |  1 +
>  tools/objtool/objtool.c       |  1 +
>  tools/objtool/objtool.h       |  1 +
>  6 files changed, 88 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
> index c6d199bfd0ae..e92e76f69176 100644
> --- a/tools/objtool/builtin-check.c
> +++ b/tools/objtool/builtin-check.c
> @@ -18,7 +18,7 @@
>  #include "builtin.h"
>  #include "objtool.h"
>  
> -bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux;
> +bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
>  
>  static const char * const check_usage[] = {
>  	"objtool check [<options>] file.o",
> @@ -35,6 +35,7 @@ const struct option check_options[] = {
>  	OPT_BOOLEAN('s', "stats", &stats, "print statistics"),
>  	OPT_BOOLEAN('d', "duplicate", &validate_dup, "duplicate validation for vmlinux.o"),
>  	OPT_BOOLEAN('l', "vmlinux", &vmlinux, "vmlinux.o validation"),
> +	OPT_BOOLEAN('M', "mcount", &mcount, "generate __mcount_loc"),
>  	OPT_END(),
>  };

Meh, adding --mcount as an option to 'objtool check' was a valid hack for a 
prototype patchset, but please turn this into a proper subcommand, just 
like 'objtool orc' is.

'objtool check' should ... keep checking. :-)

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014165004.GA3593121%40gmail.com.
