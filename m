Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXOX3T2AKGQEQQE2XIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 415551AAC21
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 17:44:30 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id u1sf434956ybm.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 08:44:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586965469; cv=pass;
        d=google.com; s=arc-20160816;
        b=c6+yCHyMvHNGdND/jsrCQqmbqfweX3NmKplLS2BzvivX3Y7dCt2vKhxlOvJbpTs76A
         D8PVWHb8Rf7xvFBJv+/cD4y8fNIN/NwLW0SukIjOVWq/jthq1ygY9Aa1Jx4XWZ2w099w
         /y0ao/RbvhD5e6TI4gVnqP5Olc2ODCcfPvNI9KydFsseWICHzlQ4qpXa1kzZCU9H73YC
         VxBqcd3wuCA4SV3r7XCu3SDFdbRJfjcow8n+GDJDoF+/iOmeKbO7N3DHQLrCX5DLIH++
         ArRpW3lASnY/8Thi+aon1bx6QZgHjIG0ZVRN+/ferG4VJM3Ag9QdkkU+xJaGOwjS7IkL
         dHKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I5CrYfXmaHihwTieGhc10mZObFfEpjZwEOUeuPiJ62Q=;
        b=ZtPDALgnET+czfu7CocFS0ab+YHakYZ45TVMmli4MgvYipVM8GiWI8eVg5yS8rrWqP
         YGoOAquHfhX8mjhHwpGQCqf792qFRR0gL3t31TCLZNhf/amZfSs2F1sG1lS9M9Ezqw+W
         2W9LQbAOawsK5JXeVRCNL0hp1uHRvKVfs9vBguSyOmcCGqrt5ZTblR13C1zMaj01SxQb
         F5JERKhm6IbaT4ePSlL44aDOaDQy3v6lT2k5MyS9PmDQ+9jIvNaVp3+YUHYlD/5Brs5V
         6yFhZR5lhrEWBQqZ4CX86hOXy6m8kbMlkGFf0wVtx8GIg1Yfjo77qBSoMWtDMKTPSy8V
         Ovng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AKVoTgD+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I5CrYfXmaHihwTieGhc10mZObFfEpjZwEOUeuPiJ62Q=;
        b=IBYA8egFWnotVHhxRzvRurWzuNMOLXmQJLsUZ5wq4+Aw2fKhYckXa4HpM0rnUBAM7E
         FtX9qJTHjYg44r/NDAuvxyoG5KzLSX6pURf6DT2ryWUQF5um1Twq1VsM/ksBhFeD+FKe
         4RMSDtpSf0qRhmlrWMUxhWdCf1mO4N8M4Q1F40DcNSeRJqoUOQBMujntUWGt7ajWqgJu
         +gC9WJBgW6AbIiQUOrGw8UhAh+1voBog/ySNCTr6LsT5/QYb3sqIjLiSzuzWHgZ5e6Gz
         9KmfnYni8C61/w30xB4Fx6KhU7fDG4z4/qLmCWEbBnXULO2HGIksiSoHuLbVbRo2tXeM
         VINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I5CrYfXmaHihwTieGhc10mZObFfEpjZwEOUeuPiJ62Q=;
        b=ldRh6GlJYIrs4DYIqm8nCtzIOcplr5NlLIy/ehBj7t/F4GUxoSl0pf2EeQ/lePaxaQ
         2MlQToennIjdAZ11lz6oEWppuC1FczGYmQ8+paEF9L0WsqKpATqIosTBHybVl5BgQEde
         x4na+WMnao6xF3mittM6//TRwg2rxzUHyZwlEcEAb9eqPObPEIXM7fIB6nKvXtcbjghW
         XlRaPiyb7sRi69WhIbhUd/M2+Dw8YtzAGUIfLAMLPr9rTSVd8I1ivJJmM77gg8dLWMaM
         dgQSe45Qxe64fjoNY2HzExkvDHUM+7vN7mQK+mu03GqU1pYfpGu3VFLTE3OH7wkPFbMV
         66Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYr5w7p9d8wwO6+8EA3rUu0q840feKzFZAPyUnnDv/SaiS0+E/g
	UD4wjGcrElboRJbh9EQsG74=
X-Google-Smtp-Source: APiQypJlSTu4ecHn/qG2w7wN9JNBykoVWNgQb7gE2Zh9Cp3S6dibxuNC+iRsY2QkiyaP3PdEr2J76A==
X-Received: by 2002:a25:9841:: with SMTP id k1mr9170299ybo.285.1586965469295;
        Wed, 15 Apr 2020 08:44:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:15c9:: with SMTP id 192ls2881834ybv.6.gmail; Wed, 15 Apr
 2020 08:44:28 -0700 (PDT)
X-Received: by 2002:a05:6902:4a2:: with SMTP id r2mr9468944ybs.60.1586965468842;
        Wed, 15 Apr 2020 08:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586965468; cv=none;
        d=google.com; s=arc-20160816;
        b=VAgOedPMkXlI4yv9z0/dpcUA44OXTkGJrTrRP/9yFRU57Q35kIgso0zWWsxbjh+rnL
         VK0mOCcrBMV2bDLrz9j34i65s7Rv7ERxpwDNKDnSx1r4cvsJAdXvvbH6xsu+aI3mR27c
         uuI/3DJSrrVfm5n11qKQ64eIPQpbi8jw5DlQ+0w9WD7NqwSRNMcdV970mk7nZDEvo1WF
         f06hB00z0PucvF6j6GASqVj3ST1owZJNGCF4JR0WXP/1h/dmCMfboz+kW0pIegjzY/4L
         Q+muZyjy+RjtXmDlqXJgPO7vANs6pcWEObwJHb2j8Ah7B8J3MVTyf557tdMqoikwBThG
         QhLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=W+ikqrmBIBEKvVkXBn0UllA+OtUbb2X28KHF+kd9Sus=;
        b=Z9DJc0JP2bDU/Opchi5/edAMG9ONneI4txwT2cPQVI3CTJg7cKsqd/UMQsMidd7lh/
         pkffb7nka5X+31AORnIZG+4EIy56j4YO1q0ZkJlkEvhppwnhPZgqgjqNVSrsElCuSgCs
         97mzdD14wocnHWt49PxEbMXvlP6KhLKD545oJSwn7CMSGxrh4yBOsnUYLib+PGeF3BwX
         W/NJ8YEO7km8pOdQ9wA4WuXWQw3Oa6d571NYfIpVLbwNnjLCdanFeK5nsHFPon74bjOm
         ke3w1sBX7mE3Uzna1a+sqe2yMQm2ZeZ3bo+29zlhIf4TuTNscswsxi8eB+JlfwijtEhB
         7wSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AKVoTgD+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id f195si1069139ybg.4.2020.04.15.08.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 08:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k18so140189pll.6
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 08:44:28 -0700 (PDT)
X-Received: by 2002:a17:902:9b8f:: with SMTP id y15mr5654954plp.169.1586965468363;
        Wed, 15 Apr 2020 08:44:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f30sm15052172pje.29.2020.04.15.08.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2020 08:44:27 -0700 (PDT)
Date: Wed, 15 Apr 2020 08:44:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Kristof Beyls <Kristof.Beyls@arm.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Russell King - ARM Linux admin <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
	David Howells <dhowells@redhat.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Manoj Gupta <manojgupta@google.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Jian Cai <jiancai@google.com>,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <202004150833.E2E9A89E0@keescook>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook>
 <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AKVoTgD+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Wed, Apr 15, 2020 at 12:32:17PM +0200, Ard Biesheuvel wrote:
> To reiterate my point: I strongly prefer minor asm surgery over
> elaborate Kconfig plumbing if it means we can retain the functionality
> even when using LLVM tools. In particular, the use of macros to
> implement missing ISA support should be considered before any other
> solution, as these are already being used widely across architectures
> to fill in such gaps.

Yeah, this seems like the right place to start from. It sounded like
there were cases where the people with knowledge needed to accomplish
the macro creation were not always immediately available. But, yes,
let's get iwmmxt fixed up.

> This code has been around since 2004. It has never been possible to
> assemble it with Clang's assembler. So the only thing this patch gives
> you is the ability to switch from a .config where IWMMXT was disabled
> by hand to one where it gets disabled automatically by Kconfig.

Right -- I meant "let's fix iwmmxt with macro magic" not "let's disable
it". I did want to point out the Kconfig disabling may be needed in
other cases.

> So what hard-won ground are we losing here? Did IWMMXT recently get
> enabled in a defconfig that you care about?

It's a CI's ability to do randconfig builds to catch new stuff. (i.e.
where "disabled by hand" isn't part of the process.) Since there are
multiple CIs doing multi-architecture builds we need to get these things
fixed upstream, not a CI's local patch stacks or Kconfig whitelists,
etc. And when the expertise isn't available to fix arch-specific stuff,
Kconfig negative depends seems like a reasonable middle ground. I, too,
prefer fixes that allow Clang to do its work without wrecking things
for GNU as.

> I am not disagreeing with you here, and I have worked with Nick,
> Nathan and Stefan on numerous occasions to get Clang related build
> issues solved.

Yup! Totally; this thread just looked very familiar to me from doing
treewide stuff and I didn't want what I thought looked like the core
points to get lost in the details. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004150833.E2E9A89E0%40keescook.
