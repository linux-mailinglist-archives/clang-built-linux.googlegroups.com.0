Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR7Y2L2AKGQE36M232I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B201A6C6C
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:23:52 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id x16sf9368849pgi.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 12:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586805831; cv=pass;
        d=google.com; s=arc-20160816;
        b=m/lWdd7CrC5gry0527HlvAqZue9jqwg5L77SFlBfQOKWNoFyJ222bJ3DYEqpGxJSNR
         HCRJNp2jf7JpRYiNxNfl3WqS3+GdzdToOqlK38aeEUVyhwzcii7pWivNCO2zQwOlTXxi
         t4KEx7jjrctxVSeReTgPRTKBI1ZsslVb+mzqTROBtFXA7tS08thI21Dm/mMkPEgL8lDP
         uYog1bjCL5NY2bMKGGC7NHXWR0NnA+IkU6msRCJw6SVuQVwy7MB3tLgNbUe/ZncRaW7u
         4sNyk1R4c0sJXSAO6dqFBhQWHZyn5mnTy2+7wlUqZjVzER8CmHgmKTNain2sWUHN/hr3
         Ql0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eGndpuJ88yYduC6GwniYLhFIo1rj8n4HrMiCTy+nnp0=;
        b=lAgToEneu/l2ehqqA8/ArQwpERSLiljVLmTNqNNxnCGWGCdN7tBwqUZlsQi31zBTdD
         Bdb973KUp4B7GVkyEoxkXLYNQleUaEOKMslcGL6jCUmGjh98x5ORYvsNlXi71VEjfWrE
         hS7DT/EHAQ24E+idft3dgKXIRXBv99V+f8rbrorOlyhHHRyFTFcpWKxIJ70iNJ5t1DUx
         aFibFsGRq5jygJvRM1LX7/KfzYOAPNx2EL5vdaMO4f8bVDd1M7/IJ48oh5yEyL1JusEn
         M3E5MeAtj5Lc/AEfFyj89dMsjPPZ0Cjm6d/bl3JSCNk3GcFHLH3aGqacxFekPwZHvPB4
         LFjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BvE9X5S9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eGndpuJ88yYduC6GwniYLhFIo1rj8n4HrMiCTy+nnp0=;
        b=B+2GIF4GT9AAMUz3SLKzzB+ZB7865R8m7N2oL8ZU9bRg+PWxQlHvsJpNTdMtjApHRc
         4x/0yAxGgJsBE9qGxo7jB6qgrMVUFjGPbizUh6E4WxKEe0m06h5TecF2gR/VZ7ma2C6Z
         7PnXBbUsJGi+xrUqTUx6iviBHh3ItzaVwaRIIgPqZwYfG/X7j6uXKEsB9PQsr3ydecYw
         ilOBwZuoplIZeunwEhNQ/c9cZMHZ99FFRlqYyY2LOBHowb9RB6zwQnhee4meArO+ax7w
         5hbQ94gVHNap5sYq+oWQnUkCTaR2WQqaLJTeU9g2qELiJbxaPLNirKKHWbGusQ9qsyeq
         72mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eGndpuJ88yYduC6GwniYLhFIo1rj8n4HrMiCTy+nnp0=;
        b=VB3e/lUAld8Rf4LmZHOtZXsSneQ/3NWaZGHpct8z/I1XWaE+ZIzpIBkF2UBGfrV8mZ
         +c4T9erJqx4r6wypzy+PZSNHwZcyhhSfeF+2RBf6/5/csDoT57TM/2btQ3T7siuwcrHb
         lHDxClwJAdPYiQtJGdUzAEK1O1qchQyZxyF1EgFUTupKFMr8O/1jeUqYlgMXHEGn3pRV
         S8Ffhbst/wuVNntxX3jtHvx8kaIx5Op2ZDiUM2hR0toK09KQ1S/TkbNVjEGsaoJ0UAUs
         jjEjAxWrXtqYUln4WyS+sNHgDREUsaq81TZfzPC2+y3wfW6YLFBI8+rkLW1+P8YVgiy4
         I3xQ==
X-Gm-Message-State: AGi0PuYdsoPzMaQQCd4IbmEyLfvFrolUYSy3bmDV5vsmfF7NvCG0jeTO
	T2wXjUxUSrZoU68WLP0F9TU=
X-Google-Smtp-Source: APiQypIr6f6+9QifVu3MhUIqAdNzlfRGC8aLDn5xEhCGePa4pR54NgI2YXSHAxZjvoUFAyAWdwdVKg==
X-Received: by 2002:a17:902:7b8c:: with SMTP id w12mr10116493pll.107.1586805831354;
        Mon, 13 Apr 2020 12:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls1009245pfd.4.gmail; Mon, 13
 Apr 2020 12:23:50 -0700 (PDT)
X-Received: by 2002:a62:87c7:: with SMTP id i190mr5077166pfe.326.1586805830833;
        Mon, 13 Apr 2020 12:23:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586805830; cv=none;
        d=google.com; s=arc-20160816;
        b=JU+ZVAC48LYpFUND5J3O7bWKyqxxoQEjvq1/55zY0zZFMap+qqFzJ/WO9j5QkTiMmp
         5FEj3uKcFB2EQB6c9DQGb4vsZeyq2sJbpC4i9vPybVgiRhvKlrscoDaye25Gv5asKDch
         /kfutqQXjjaMv6WHROeOBOV9lRtO3mEeciSWq2a90qEMGtOBanjQ1qDF1Eio48tkxHfv
         2JUKVd+cyMYinovvqukqg4Z+EPVHLxF60Dgv9ExTpfIXyjJRU6dpMf3/VbSVx2LueJfx
         t9uOe22xKrLN8azCFFbD6sVut44C+12+TaVNE/RTwtSydt3I2LFhja4Pmb5MQE35Qqpl
         CTvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8lE32io1NRyqSa7MHqCZDRttxoRhAaBAKKn04pJslSA=;
        b=z/WVaXpd+6qNMdjfO3HO2mVUkNYu9OPZSksV6klEEi1jytc3N9cXdHJuM2P7DzxQNg
         yZCV35NGoPpUuDlosgO5S/n3SL98pcRBFD8V1mheqWU4NVkP/VDJ3/G6csWosKvqc6bf
         p/WgwSm/ViUO3CrvTz3Afv1R6DFfWX4nbkPQESfikJO/Xt5WgsZNzgoD5xbjhoiztLW8
         TKBLyprv5RyEHecPI+FS+uk2TbAklqdpEyVsSkjFO9WHHrp+QWHNjBd7IQ+NPy326iIq
         tVgrQLJqwYdxB5FhMo66adVwYpuR9SQSrJUjg2Pw9BrMVLtkCh04n7aIZPTAey8kpVqs
         fUCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BvE9X5S9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id v22si452369pls.0.2020.04.13.12.23.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 12:23:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id o1so3371193pjs.4
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 12:23:50 -0700 (PDT)
X-Received: by 2002:a17:90a:266c:: with SMTP id l99mr13602789pje.186.1586805830250;
 Mon, 13 Apr 2020 12:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com> <20200410123301.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20200410123301.GX25745@shell.armlinux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 12:23:38 -0700
Message-ID: <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>, 
	Dan Williams <dan.j.williams@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BvE9X5S9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Apr 10, 2020 at 5:33 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> For older CPUs, it doesn't matter what the latest ARM ARM says, the
> appropriate version of the ARM ARM is the one relevant for the CPU
> architecture.  This is a mistake frequently made, and it's been pointed
> out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> keeping older revisions is necessary if you want to be interested in
> the older architectures.

As if it never existed *waves hands*.  Interesting.  Does ARM still
distribute these older reference manuals? Do you keep copies of the
older revisions?

>
> However, there's an additional complication here: DEC's license from
> Arm Ltd back in the days of StrongARM allowed them to make changes to
> the architecture - that was passed over to Intel when they bought that
> part of DEC.  Consequently, these "non-Arm vendor" cores contain
> extensions that are not part of the ARM ARM.  iWMMXT is one such
> example, which first appeared in the Intel PXA270 SoC (an ARMv5
> derived CPU).
>
> In fact, several of the features found in later versions of the ARM
> architecture came from DEC and Intel enhancements.
>
> If your compiler/assembler only implements what is in the latest ARM
> ARM, then it is not going to be suitable for these older CPUs and
> alternate vendor "ARM compatible" CPUs.

This is a neat piece of history, thanks for sharing.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-u3grX3O4CtBayJYhv%3DmmsxMrRTF%3DAMcKMbphN5Xkgg%40mail.gmail.com.
