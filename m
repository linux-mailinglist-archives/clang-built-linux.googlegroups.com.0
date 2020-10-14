Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZX7TX6AKGQEB4QCSDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C79028E8E0
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:47:03 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id r1sf419629pjp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:47:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602715622; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUPqhn1DoId10oZPerkKlKKED+ZXaGupmy7z1l0KT9qwds3mslQzK5WFNagClHpx0I
         STOb/6FwJIeoZpUF/6FODtOn0UBmtlCsnc5VdEueemPuF0hUhpUAy9nPlzsTtLz2KT/A
         LKyn9vA1aJCqMCcl3Q3slyyIUZB6zBbWuc9378iruUZWjKrofxkxYj38dYHdsQDwyBhS
         4+TlDV8qnMvRR5IR55kZXjXtCVMtlh9hnDYQjMBnHXAJbnFhKmp+VXWPdutTWY9NlogB
         Pa5UpJlwE/SVM1QTEm34QlJHlKy2Yx0WNVaLhlZo3JuBEPIkZOQkOYe2/vwnucz/PD3c
         QEkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HveYs/Aqhhopamflr2m1gP9o0nd6rS8NStcPV/lJGt4=;
        b=iK6DH2efeLdUrz3y/gm7PSiUdB62YJOKE9hy4nzNb09H4w7yQey13TkCA3BxOqhCEM
         9oOzElzpOMSt+ie3o/7+KFskT2f2wfD80js4wJuTix3OcenaMhFQm+ONDQHmMCuMUU+y
         8XW58CvisGSTyFb6L2Ir6ZiTDU4GXjuFwUpQO4al47akNV2K9wd7oBl8G5g+AfJxaxzs
         BmjLf6qASiLRVmPxdywmKOhiIkiG74L+6RtfNeFL0YDR0I7UGmY+3OhZdtJgV1Iu/ysB
         vrQrsDY1/Zm65MjTE9IiAsg3OQ4dPkrQLmGNo5uhEjsgninHap0xShm5HzcDATzhhKSV
         ly3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WE3ire40;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HveYs/Aqhhopamflr2m1gP9o0nd6rS8NStcPV/lJGt4=;
        b=JnfPbsn4b57xQCYlnkUqD9cqVMk3cx/I96u0A1EkPbK/7mYc66nxLVIA2PQnMif3iB
         lUWZkIrEIgSono8mgXdJgsk5g8+ljkoPBN678u0DT+idXKZhWsYQgIO6cTR0aNR33z5w
         TRE4in7O8DWxynv6XiGgMTSfmbbmegaQqZg6vkOrXIh7yHWv9S49CYbtHb73mKjsC5pl
         rAMnz4KIWgJJIvGpBNyhausIujPL5igl4r4Eo95o4lH+arbF6iS0L/z4291iYXGlqY+b
         Z7Ld7yDTW06wfA1rkXuVjM4KMbHLwmBXffmnPaPmCWWwZMgftqD8ruC/sh55KGyfF0+j
         kZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HveYs/Aqhhopamflr2m1gP9o0nd6rS8NStcPV/lJGt4=;
        b=YgsbP6+WJisLFKT+QUfdMZe/p67/o9g0nHx52Ko32DNhs+DWbyze/SzQOuuWtuqftE
         wXLf1il8Y+GUDeehqaaztdNTcfo+YN5usTkbAqDjdK2SWrwz0/gNXK1SO86DB8wKZppg
         u40lBNgDLbuBTcwx35CrM1O4llkwOoNRIXlIZdcEK9WWjor+E7MpRAVaC9BaocPd4F/X
         z+iBZOwZwmXnS4f0SQLyzgIwTUTvP+DQsNrE6/JxaZAJntLrJMGHr6BLlV7Q4UzCXkVx
         mZblAS0P7eh8LgHwE4WXvwHr4p7rdu63iV4l5dvb32dyT3CB9Z04NUI/zx6X+u5ADfSz
         GObw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dKFQbBeb3Cp4zNxdHLpi0nWsyCORdwrr8wqm6DkKy1XS+TMf+
	luQKynwrWKJP2nN/YWNJuiU=
X-Google-Smtp-Source: ABdhPJzMZZnpNAocNCsCu9QqyPAOBCGhtKEnyJT00zbJmHCqq3xZ91m31b6RTgFmFCYrGtcqvMJBHQ==
X-Received: by 2002:a17:90a:8c02:: with SMTP id a2mr1371364pjo.186.1602715622274;
        Wed, 14 Oct 2020 15:47:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:709:: with SMTP id s9ls298012pjz.1.canary-gmail;
 Wed, 14 Oct 2020 15:47:01 -0700 (PDT)
X-Received: by 2002:a17:902:fe0e:b029:d3:d7fe:88eb with SMTP id g14-20020a170902fe0eb02900d3d7fe88ebmr1165785plj.58.1602715621763;
        Wed, 14 Oct 2020 15:47:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602715621; cv=none;
        d=google.com; s=arc-20160816;
        b=VvRRYoWyOqeOoCD6NanfT8AevYv/T7kezs+Rm0LW/Fv/zDhxx6CvGQBPG6u6y0Gtdy
         PGJxz5Yyu/ySNEJjB9/tsbqkezSNrmTupXjogo2qdm/4ioYs0BOqwv1eTm7F0T3kjhrS
         xz5GwQcRtlLF6D4hFEaCDA1ES9OfMIeri3uIrDR1aAI74TT5ipme1yKoOrYIMMOw71hi
         iwvjZOAOE/Aa00KmB9N9jOuxWJ2obyboTUPvbizYMu7qhQz39dYSMBJuapG8VT0hXeqW
         XCSxg1NBlvshzSIkqivzB1VskkmdJovSBpcMi6YsNPZ1bfvJP8XlBYFCdziqVExQ8gBT
         QUAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1ZkeuWYx0x8NcK97W3bc1qXSyhy0ywO9Zu1gztVJSpU=;
        b=XuXiOTOxu0QFvT3Q0YeQVvxjUpBhAcuXOyZ3cjm3fupec7w8U00nTmbZXgb4kHD0sB
         JWTs6TCqMsh/DV8xDsCkaMfLZ1azXiFn7KAYVHEMHpkF5Eee6pT8cNI2nSXShz1CPqSp
         rWC1hBJelWrOSfrFNTp9Oc9c+LL9fNPzu+fJgTIk8ZQhe+2oFv5ZwHnZm0rzyZFMcQKV
         XLto/xMfYvxGUAs8Ui6FMRqplyjVC92U31P4G5hNp5mRwJvgGajCwqAOxVhakslVcWGq
         IsmLXFKLUlxiF4tFPFaHt2EjuNOMWX02y/S7IoM6pXVdCQSe/XGILtLr3mopeVsjI2kc
         nYOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WE3ire40;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id d2si97324pfr.4.2020.10.14.15.47.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:47:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id a1so634590pjd.1
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:47:01 -0700 (PDT)
X-Received: by 2002:a17:90a:f0ca:: with SMTP id fa10mr1313834pjb.130.1602715621497;
        Wed, 14 Oct 2020 15:47:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d9sm591245pjx.47.2020.10.14.15.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 15:47:00 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:46:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <202010141545.1E2A393C62@keescook>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-23-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WE3ire40;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Oct 12, 2020 at 05:32:00PM -0700, Sami Tolvanen wrote:
> Running objtool --vmlinux --duplicate on vmlinux.o produces a few
> warnings about indirect jumps with retpoline:
> 
>   vmlinux.o: warning: objtool: wakeup_long64()+0x61: indirect jump
>   found in RETPOLINE build
>   ...
> 
> This change adds ANNOTATE_RETPOLINE_SAFE annotations to the jumps
> in assembly code to stop the warnings.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

This looks like it's an independent fix -- can an x86 maintainer pick
up this patch directly?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141545.1E2A393C62%40keescook.
