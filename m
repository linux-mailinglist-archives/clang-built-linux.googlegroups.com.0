Return-Path: <clang-built-linux+bncBDN7FYMXXEORBKO33TZQKGQE3LJKU6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C27D18E7C6
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 10:19:38 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id w1sf10307466qte.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 02:19:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584868777; cv=pass;
        d=google.com; s=arc-20160816;
        b=u9kA95DozqAzcfkuoBzcTs5JMcm/Qlw2UHB2d5s7A41vq8fTbJn0o2EBCICLFWbqmC
         SMJNMUyaVLI3HyfSQE7B/nOoIkVkKGBcWp5USwBJaykD69wPyI18v/nUPPd+7lA1YMzb
         818F/UxhrHR+4TKcNBj5msP96sjkRlyNj32cLu6EqEtgpWzLk5mYLuVPQ8UIhKpbzRmq
         RISk4UCPPXfwGq59BgwWhbJiXjP5CEjCcwfC2PFxj2PuWPwTXOZMfOrwQM/2ggNQY6+G
         o+AQxqeS2NKtZMssfs+swWbEMCOPK8B6KaTtrFMwfFqQ/4fT+kOlEu6RT00NQPNdSKhw
         HxfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:sender
         :dkim-signature:dkim-signature;
        bh=wfbcPS0zNJY6qZ81Qf/DIqmXlfVtYeepRiFf7ks65zg=;
        b=gBJd4PwbWkQZ4ejE8NaRBbMe5qNOM3pPiCL0gZDFianfbxiasBAAHVj1f/yxNvdPU7
         5hPofeGknFMhRAQg4/pWPueCJzmbgcT//wzIWC3yp7pT0GY6N9h/V+LY75KTYOzN4KBz
         awPolZY8KVFRd5qeXj4vwM/9mluqORFtuWX94N2eD60ve5i4HJiPzMpweijwruyEUu3G
         +rGgUgMJY5MxNEfrIbZQZ4vkTxgrnRew/8jKOt21CPt9Mdz89SL//AlZ7j7loDpmlf6+
         hYSmBn9sdgiWQ8Sz/XLfBzK5pXw5JHt+6ti6p11BCcVE/KCqyAtLvlS9QerkyE/Zdr98
         YFnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=StLgn8Pb;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wfbcPS0zNJY6qZ81Qf/DIqmXlfVtYeepRiFf7ks65zg=;
        b=R8Nsj67G2nhm4Tz73ZaByCaEWjWG3NENaERc6AoA5G6HkMXGu5ZEJSYOAYnreIlwvw
         Slaa8UKqflF2DKpbheYs+vkmVAVrrUtM5T9TSilf/MVn7e9zpPS85vYBXOiMRqjmFlMA
         RvIhJ8QrZWl7KePOCJHfzOTvlBXT1Lwnofae/CgK/p7MGdl2NZdv7ZIOiWQ2WwBs3iPr
         YgP9oMzSbZBEFv6C803fy4txU1B2dG/m+vaYHJa3INxLnWo2Gznk/mT7JwAV3uRi0Jr6
         t/BBXMAIF65lyLK8RNxGT17blbYx8iGb87Be60Z2sat8/cYpvfSeYrzL/J2oDLHozknv
         6Fzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wfbcPS0zNJY6qZ81Qf/DIqmXlfVtYeepRiFf7ks65zg=;
        b=ULsxLLWZS87JEygNF+hKuYhQOOOapvmlQvy4ed93C3R/CTTvzYuF8YPyD25q6/k7au
         k8GWUjN9z3Rgma/2iEhmlusx8FK5TJ/VgZVBxgndRnG82sooVgZoloQGOTRYudEDoVSF
         vlOknmnoVEi+pymLBHNC0YF85iD7Brn6s7qnlNI1UeSes1SfV6oPSOO/QZ5bwbwbr6n1
         CQXU6LUEqn9YpGbxfzBZMdowOGR6P9AXc936okp6d9aI2KKG4jaxP2LFfT4hOJxoObPb
         dqUZc9kPDDaESj9BzNDna7zys3wlEw+TpIFfr1vdGZUL5uwJ9tmwrt8B7AHuCCv7y9hi
         Zq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfbcPS0zNJY6qZ81Qf/DIqmXlfVtYeepRiFf7ks65zg=;
        b=GZbwrCJEvHsm26ALTn1EBH/48U49WwH0wxTdO0/vVc0gkB/ubATnR/cdDSjpae0HFV
         87VS12Es6pDtdmMUOFGN2bANDvNNzWjm51bxZDK8Uc9H1Mkuj8NQR0g8z8c5jJEJPWwp
         LYGNEJaLN/rFE77zyu/FnG/anAe8d/ITfUVZv6Dfxwef0lFKwp/qb92ErRX5SIM/8u7r
         nfs5Sglgthd8cnIAhxjV9AQKzhURJl/ZPpKKiacKSMS+J7gS8xBBTu2+h0phqYMZm+JK
         iri3tjCPc4OYy04JFBXl1N4kVRINpwcFzeNVoQNln9jTWfr0wi52aj8WKOPe7JVFTUYN
         xO1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2vBnVvPCGwMTXz/1UXoz4nIwidnPlN0r8ZGlEQZpUSsVy1sQ49
	zDv5LjpZ8A4EJ7B735e9/Ow=
X-Google-Smtp-Source: ADFU+vvClRQzgnH4KXi36k4HmPaxXTixsOdE4QzFZk2kQyYQXFaGwN5pjDUoaG1skxQXGnTLTsDvqg==
X-Received: by 2002:a0c:a602:: with SMTP id s2mr16194668qva.222.1584868777555;
        Sun, 22 Mar 2020 02:19:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f007:: with SMTP id z7ls1566885qvk.9.gmail; Sun, 22 Mar
 2020 02:19:37 -0700 (PDT)
X-Received: by 2002:ad4:4d41:: with SMTP id m1mr15805921qvm.55.1584868777161;
        Sun, 22 Mar 2020 02:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584868777; cv=none;
        d=google.com; s=arc-20160816;
        b=suu2eWv9sjXX8n2l4LBEqmhONYv509FkLL9Dgoec3LsbMxjeJvkx6eb+v1ux+c/ACt
         sVdi4uqabGfctI3IkyapKbOGhqK4eZCFugKokIEPPHRoAXUFYtstrS16Fn//gfbhUQQY
         Y+iidKoqwNlB5BK4XgahMNQLDH3QfqMJPVBycATarsQx73ZlS275ONlxPV+Fg+Wg4T8u
         Ty5bgNdDTNDljb71p2Svm04lZXvscI5e3ramO+x7u9i/cQAbcRk10hlflSTdJUR/1mn0
         ddeQ3cZTdTRoLXDPm7YoFkxYo7IrtBXmp0B/y7hpFYva75WuCHZit3Cu05fWLbXJkdZx
         /dBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:dkim-signature;
        bh=RcD8qCKrPNyWahymG+XggFywpYlZflG+yOoi1VKPcZM=;
        b=pc5zegoICUAMA+3b+fjdvb1bZWnoROeP0DlOsWholTqynYG52pyNLLkedKXhJHRCYB
         VcjF+IciRA8ZoJpkosCS7CsCCG8UEH5ByaqPIqqYpNyk+j9CjbNCyItr1pwARn+waZlg
         csDRd2IcGonDrB1S5CD5Wb2XsAcTeME2Ddy3yrCBJSR0wscksGhBgQrOh1qOnQOepa5m
         hCxPXMNzbDqIqNnS3x+waVOPFyE3bT8LREz3fdwjhNqcYTANVFckEuHzwB8zDDELWcwX
         Nq8BfRERMM8l7IiXu61/z6PmvCeG61Ti/VqYYZq3fNC6gQbU04ALf5I9rk37TSD4nrd1
         1y+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=StLgn8Pb;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e89si763174qtd.3.2020.03.22.02.19.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 02:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id np9so4608535pjb.4
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 02:19:37 -0700 (PDT)
X-Received: by 2002:a17:902:169:: with SMTP id 96mr16385732plb.140.1584868776275;
        Sun, 22 Mar 2020 02:19:36 -0700 (PDT)
Received: from localhost (14-202-190-183.tpgi.com.au. [14.202.190.183])
        by smtp.gmail.com with ESMTPSA id 6sm10061621pfx.69.2020.03.22.02.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 02:19:35 -0700 (PDT)
Date: Sun, 22 Mar 2020 19:16:29 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>, clang-built-linux@googlegroups.com,
	"H.J. Lu" <hjl.tools@gmail.com>, James Morse <james.morse@arm.com>,
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Will Deacon <will@kernel.org>, x86@kernel.org
References: <20200228002244.15240-1-keescook@chromium.org>
	<20200228002244.15240-2-keescook@chromium.org>
	<1584672297.mudnpz3ir9.astroid@bobo.none> <202003201121.8CBD96451B@keescook>
In-Reply-To: <202003201121.8CBD96451B@keescook>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1584868418.o62lxee8k1.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=StLgn8Pb;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Kees Cook's on March 21, 2020 4:24 am:
> On Fri, Mar 20, 2020 at 12:47:54PM +1000, Nicholas Piggin wrote:
>> Kees Cook's on February 28, 2020 10:22 am:
>> > Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
>> > to detect when there are unexpected sections getting added to the kernel
>> > image. There is no need to report these warnings more than once, so it
>> > can be removed until the final link stage.
>> > 
>> > This helps pave the way for other architectures to enable this, with the
>> > end goal of enabling this warning by default for vmlinux for all
>> > architectures.
>> > 
>> > Signed-off-by: Kees Cook <keescook@chromium.org>
>> > ---
>> >  scripts/link-vmlinux.sh | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> > 
>> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> > index 1919c311c149..416968fea685 100755
>> > --- a/scripts/link-vmlinux.sh
>> > +++ b/scripts/link-vmlinux.sh
>> > @@ -255,6 +255,11 @@ info GEN modules.builtin
>> >  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
>> >  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
>> >  
>> > +
>> > +# Do not warn about orphan sections until the final link stage.
>> > +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
>> > +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
>> > +
>> >  btf_vmlinux_bin_o=""
>> >  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
>> >  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
>> > @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
>> >  	fi
>> >  fi
>> >  
>> > +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
>> >  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
>> >  
>> >  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
>> 
>> That's ugly. Why not just enable it for all archs?
> 
> It is ugly; I agree.
> 
> I can try to do this for all architectures, but I worry there are a
> bunch I can't test. But I guess it would stand out. ;)

It's only warn, so it doesn't break their builds (unless there's a 
linker error on warn option I don't know about?). We had a powerpc bug 
that would have been caught with it as well, so it's not a bad idea to
get everyone using it.

I would just do it. Doesn't take much to fix.

Thanks,
Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1584868418.o62lxee8k1.astroid%40bobo.none.
