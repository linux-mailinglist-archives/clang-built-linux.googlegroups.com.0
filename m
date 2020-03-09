Return-Path: <clang-built-linux+bncBDEPBSN75UNRBRFPTLZQKGQEVOX56FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EA717E848
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 20:23:49 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id k1sf6661427qvw.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 12:23:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583781828; cv=pass;
        d=google.com; s=arc-20160816;
        b=e/Ubm7xZdmFIKDefRCmsOjrpyarusSmgpbeLf+frKCxp6rqHLIbZX8YYpXGxrSsU5R
         eWNZh2o376/9ZMhHR7scQqvqPWKkiyzsrEzAZASDlcEfrzZVr9WLADjYwIgzQ1vWd/Pd
         TNcKwYrIByoCPt7LQAdgOKAjy2fsQeixZxf/hpCr/SkSCBgykUzEEH7AmFpdP46Sq3Rt
         lY4zt+LBKlPGk/5EjdtT9Xnhu+giI8bBnZufb9L09rAOz0L/1+uUsjw07XZWxA/FLSxE
         rWFZlBIxL7/fsHeSyjNWPlndNlzK3ZfL1Bb47gcOhkp7/+9U3moxPp1uki6Bng6B/07m
         TxFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:sender:dkim-signature
         :dkim-signature;
        bh=cxLR1frC76/5rNe47/vljml7aEre8PWUr0kxlPOmA1o=;
        b=WatX2CQEow5ZEiArsCywJrjsZ/VYqQ3f0lFcm3jj5I6xa+NbdwbTufb31fTyZfCM0+
         shsqvm01LqVbWsD5wP61fRg8+huEZD3CKFHxks8oyGFL0nMtQC5sqHBSeIH2JPrxmwR6
         Fi0nowVMJka5PIBDF+ylSx7kDOjk3GWXZJjes8tOwpRnDp5MFryCeEukKZgWxPKbMJeM
         fLss62S7EWUI7g7mWNIzKrheQNop4cwhcIK0XyuuG3PzmwnJMIrFvaQ+cucE2E8tgajc
         tDfJXC4QaknZHOq5UuVcsqilAmANIU89x94vOXw6nZxScV61AUOHnqA81+BnexpCW0sN
         ihLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kw4d6e76;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxLR1frC76/5rNe47/vljml7aEre8PWUr0kxlPOmA1o=;
        b=AVaYzsUEm0qm/MNLaEazmXXifGhQZJErS23+U9kPUcc7TMKqooagsq5tFHd6T33Ewo
         zoV4HaVHKOKS+ZfaMkSXShFSp5AHGLRlXL4B3JptQ7uUNCaV3tjFeDLhHLtYnCbBlfE+
         nIQVcKBTB4KMXMTatUuzdi7sKKKyn0i8c8IzCAIr3erC64yA9wQq6efFpmkEAUysWw+m
         F94TsVfkKXUHd1pUXUKzwDWPXCiTv8Z7sqPJX6aJ+Vcc6JNup4UkPsj2K4BY119zMQWx
         QZC4cpvur6ZksYuq0sh8E9nK/lcEJJf3lL5E4C0sgK+EdZGMoyDxewcMsNKEvJVPbXqu
         mxsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxLR1frC76/5rNe47/vljml7aEre8PWUr0kxlPOmA1o=;
        b=lJE/IP2ilxXRB8+hv+ON01n/8RZdoDeXsV1Nyuw72ZauMIsPeNPe64Y9W8+Tc4L2zF
         8vEXlCN48SC8cdNOPO0RrJGyI8gXnsLO3piWg24Sug6fdQVlkxPVYLPFXOd2EN6JqWlt
         HLLlPqOCWnOOCjLjFEtX8ZH7qMuJQDtmZWTfZ3PnVSlq+xUKEsZQwe1r5dH/AgSSmsMj
         IkXBlQqBI6gm1Vq8lz67ADwHmb00bmX48thCxN2ZKnx/bgyJUcFgL8POspNFod4w1PQY
         ZJgd9a0mmjr8rFOzk9QHTVv2lJv6O76tX/n6jlOYRmnOHy944yjmaWOHuooOQYnaCL88
         p8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxLR1frC76/5rNe47/vljml7aEre8PWUr0kxlPOmA1o=;
        b=GRa63T4bek6RpXyvUq8edrLTW5D68YC42cathpSkANp0tMcVhU7kVdugq1zM48uevm
         j1oAyeg6zoJ/4ODb2Iffcsyb2NydsoBAcNYfEZHF5OIc760bTm8itljBdtqrOPql+nJg
         bxrWU4zlRKnz2FrIW83L6Gg0Z0yaztjSE+9rRbFt6xjbo0PQuTAvqgZwMo1E7gEDHwM8
         Z4hQxulGI0700ELkxP4Av5OdWujHYryXDy7fJ5quNMe66/fUdOXj3muOeBUq+LC2vGzi
         TE/6PuMmTdrffgU2PF/FWgO5een+6P+HxeALc6V96wKUr73kGWX+M85aUV4bIa1FCYX4
         avbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Br8ViSIrh3NeuGkIdaujgu0k6s/Y6DgZJhGKWUekmOh5pPvw1
	c+876YyBblllm3ITwgjjAy0=
X-Google-Smtp-Source: ADFU+vvUDBI4T/xzz/Rk1JXwXJXrm2Wje/4HmttuG5f19Ni7gQX+f5z5YZ3IQbqscvvEnKRMim5T6w==
X-Received: by 2002:a05:620a:84d:: with SMTP id u13mr16612793qku.94.1583781828553;
        Mon, 09 Mar 2020 12:23:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls4693936qkl.0.gmail; Mon, 09 Mar
 2020 12:23:48 -0700 (PDT)
X-Received: by 2002:a37:3c7:: with SMTP id 190mr16773427qkd.130.1583781828143;
        Mon, 09 Mar 2020 12:23:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583781828; cv=none;
        d=google.com; s=arc-20160816;
        b=pbm60JIkWfA12egXjBFuwKTb4SIiniKjfQkg+5BOhObz06HGM7snOecOqw+u+VEutm
         GzI3wtvZmEMJY3mXAglsgc4NaCTVyN+XiqFFPIK8PTy4lO+OspyOVEtLEZMA5WbSgquE
         qlKmpNu3DmjJZ7UZtH9x/9qWitwFnNwPFjfIQ/7GiLaKSlrtNwq/3mtLuUx9tIdTZPk1
         tzIXReWuKb3fEsAiWFfHTCc05E1NgeV4uqO9dkCwMr+v8qVTQz1ptYo6DEhRN0Lq9FqU
         cNfswyA4WxJY8o6A9n8065oMudb8hcplAGhc8ha5b6JwcA8pB2TOMLyRHVXXQkCU2HbB
         wvrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :dkim-signature;
        bh=pSIEyt4pe+WfrawaMNkeNrr+5fcB3XjzVwsYTOF2ju0=;
        b=ZLHCANgjSiLdnnp9/1wg68Q7uhtTg3gSfIwj5IlQmnXBZBEzLrtEyGtyo71froKcC9
         sJMYcxWpnhVfq0JVUoDKeWs0ClaIFN2PML3GNBPaGwBjR81yYrAlbhRxOy5QR10sYSzp
         atjsaa+Spg7e7nVLZtC2040nzWwGxFyFD72VMAeg8W9mp3Pz3jW4yL0lzJ+680aWC3yT
         e0ozx31u/erS0jGkmAof7EiBVydOH/6/xKYsnubX+CREAw2nXrnT/UcoFcZ2AEpCihkr
         t7/7Pe2oIe+DMZjwEDPJk6YNv+g+DK8gpcx6PAgn0K+RYUMpWO8eo9qpNLFFKqQ1Hiee
         Z2dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kw4d6e76;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id m18si246339qtn.5.2020.03.09.12.23.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 12:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id cz10so1522560qvb.0
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 12:23:48 -0700 (PDT)
X-Received: by 2002:ad4:4a6e:: with SMTP id cn14mr15960454qvb.21.1583781827648;
        Mon, 09 Mar 2020 12:23:47 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id c12sm1540995qtb.49.2020.03.09.12.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 12:23:46 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 6E9A740009; Mon,  9 Mar 2020 16:23:43 -0300 (-03)
Date: Mon, 9 Mar 2020 16:23:43 -0300
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ingo Molnar <mingo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	linux-perf-users@vger.kernel.org, Ilie Halip <ilie.halip@gmail.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Igor Lubashev <ilubashe@akamai.com>, Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 3/6] perf python: Fix clang detection when using
 CC=clang-version
Message-ID: <20200309192343.GG477@kernel.org>
References: <20200309185323.22583-1-acme@kernel.org>
 <20200309185323.22583-4-acme@kernel.org>
 <CAKwvOdm5RrdpOCMgRezLeHJ9GuocVoKqSUQGHjaCEcZdSr4AwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdm5RrdpOCMgRezLeHJ9GuocVoKqSUQGHjaCEcZdSr4AwA@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kw4d6e76;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
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

Em Mon, Mar 09, 2020 at 11:58:33AM -0700, Nick Desaulniers escreveu:
> On Mon, Mar 9, 2020 at 11:53 AM Arnaldo Carvalho de Melo
> <acme@kernel.org> wrote:
> >
> > From: Ilie Halip <ilie.halip@gmail.com>
> >
> > Currently, the setup.py script detects the clang compiler only when inv=
oked
> > with CC=3Dclang. But when using a specific version (e.g. CC=3Dclang-11)=
, this
> > doesn't work correctly and wrong compiler flags are set, leading to bui=
ld
> > errors.
> >
> > To properly detect clang, invoke the compiler with -v and check the out=
put.
> > The first line should start with "clang version ...".
> >
> > Committer testing:
> >
> >   $ make CC=3Dclang-9 O=3D/tmp/build/perf -C tools/perf install-bin
> >   <SNIP>
> >   $ readelf -wi /tmp/build/perf/python/perf.cpython-37m-x86_64-linux-gn=
u.so | grep DW_AT_producer | head -1
> >     <c>   DW_AT_producer    : (indirect string, offset: 0x0): clang ver=
sion 9.0.1 (Fedora 9.0.1-2.fc31) /usr/bin/clang-9 -Wno-unused-result -Wsign=
-compare -D DYNAMIC_ANNOTATIONS_ENABLED=3D1 -D NDEBUG -O2 -g -pipe -Wall -W=
error=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2 -Wp,-D_GLIBCXX_ASSERTIONS=
 -fexceptions -fstack-protector-strong -grecord-command-line -m64 -mtune=3D=
generic -fasynchronous-unwind-tables -fcf-protection=3Dfull -D _GNU_SOURCE =
-fPIC -fwrapv -Wbad-function-cast -Wdeclaration-after-statement -Wformat-se=
curity -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes=
 -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wred=
undant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Ww=
rite-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_SUPPORT -I /tmp/build/pe=
rf/arch/x86/include/generated -D HAVE_SYSCALL_TABLE_SUPPORT -D HAVE_PERF_RE=
GS_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O3 -fno-omit-fr=
ame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 -fstack-prote=
ctor-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOURCE -D _FILE_OFFSET_BITS=
=3D64 -D _GNU_SOURCE -I /home/acme/git/perf/tools/lib/perf/include -I /home=
/acme/git/perf/tools/perf/util/include -I /home/acme/git/perf/tools/perf/ar=
ch/x86/include -I /home/acme/git/perf/tools/include/ -I /home/acme/git/perf=
/tools/arch/x86/include/uapi -I /home/acme/git/perf/tools/include/uapi -I /=
home/acme/git/perf/tools/arch/x86/include/ -I /home/acme/git/perf/tools/arc=
h/x86/ -I /tmp/build/perf//util -I /tmp/build/perf/ -I /home/acme/git/perf/=
tools/perf/util -I /home/acme/git/perf/tools/perf -I /home/acme/git/perf/to=
ols/lib/ -D HAVE_PTHREAD_ATTR_SETAFFINITY_NP -D HAVE_PTHREAD_BARRIER -D HAV=
E_EVENTFD -D HAVE_GET_CURRENT_DIR_NAME -D HAVE_GETTID -D HAVE_DWARF_GETLOCA=
TIONS_SUPPORT -D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUPPORT -D HAVE_SCHED_GETCP=
U_SUPPORT -D HAVE_SETNS_SUPPORT -D HAVE_LIBELF_SUPPORT -D HAVE_LIBELF_MMAP_=
SUPPORT -D HAVE_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF_GETNOTE_SUPPORT -D HAVE=
_ELF_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D HAVE_LIBBPF_SUPPORT -D =
HAVE_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP -D HAVE_DWARF_UNWIND_SU=
PPORT -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND_SUPPORT -D HAVE_LIBCRYP=
TO_SUPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPORT -D NO_LIBPERL -D HAVE=
_TIMERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_CPLUS_DEMANGLE_SUPPORT -=
D HAVE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_LZMA_SUPPORT -D HAVE_ZST=
D_SUPPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_SUPPORT -D HAVE_LIBNUMA_=
SUPPORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARGS_SIGNATURE -D HAVE_LIBB=
ABELTRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_JVMTI_CMLR -I /tmp/build=
/perf/ -fPIC -I util/include -I /usr/include/python3.7m -c /home/acme/git/p=
erf/tools/perf/util/python.c -o /tmp/build/perf/python_ext_build/tmp/home/a=
cme/git/perf/tools/perf/util/python.o -Wbad-function-cast -Wdeclaration-aft=
er-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarati=
ons -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-d=
efinition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -=
Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_=
SUPPORT -I /tmp/build/perf/arch/x86/include/generated -D HAVE_SYSCALL_TABLE=
_SUPPORT -D HAVE_PERF_REGS_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET =
-Werror -O3 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -s=
td=3Dgnu99 -fstack-protector-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOU=
RCE -D _FILE_OFFSET_BITS=3D64 -D _GNU_SOURCE -I /home/acme/git/perf/tools/l=
ib/perf/include -I /home/acme/git/perf/tools/perf/util/include -I /home/acm=
e/git/perf/tools/perf/arch/x86/include -I /home/acme/git/perf/tools/include=
/ -I /home/acme/git/perf/tools/arch/x86/include/uapi -I /home/acme/git/perf=
/tools/include/uapi -I /home/acme/git/perf/tools/arch/x86/include/ -I /home=
/acme/git/perf/tools/arch/x86/ -I /tmp/build/perf//util -I /tmp/build/perf/=
 -I /home/acme/git/perf/tools/perf/util -I /home/acme/git/perf/tools/perf -=
I /home/acme/git/perf/tools/lib/ -D HAVE_PTHREAD_ATTR_SETAFFINITY_NP -D HAV=
E_PTHREAD_BARRIER -D HAVE_EVENTFD -D HAVE_GET_CURRENT_DIR_NAME -D HAVE_GETT=
ID -D HAVE_DWARF_GETLOCATIONS_SUPPORT -D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUP=
PORT -D HAVE_SCHED_GETCPU_SUPPORT -D HAVE_SETNS_SUPPORT -D HAVE_LIBELF_SUPP=
ORT -D HAVE_LIBELF_MMAP_SUPPORT -D HAVE_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF=
_GETNOTE_SUPPORT -D HAVE_ELF_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D=
 HAVE_LIBBPF_SUPPORT -D HAVE_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP=
 -D HAVE_DWARF_UNWIND_SUPPORT -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND=
_SUPPORT -D HAVE_LIBCRYPTO_SUPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPO=
RT -D NO_LIBPERL -D HAVE_TIMERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_=
CPLUS_DEMANGLE_SUPPORT -D HAVE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_=
LZMA_SUPPORT -D HAVE_ZSTD_SUPPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_=
SUPPORT -D HAVE_LIBNUMA_SUPPORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARG=
S_SIGNATURE -D HAVE_LIBBABELTRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_=
JVMTI_CMLR -I /tmp/build/perf/ -fno-strict-aliasing -Wno-write-strings -Wno=
-unused-parameter -Wno-redundant-decls
>=20
> Sorry for not speaking up sooner, but if you don't want to include
> that mass of command line options above, I generally check which
> toolchain has been used to produce a binary via:
> $ readelf --string-dump=3D.comment <foo>
> which may be more concise, but sometimes we strip out the `.comment`
> section from binaries.

Well, this doesn't produce what I needed, see:

[root@five ~]# readelf --string-dump=3D.comment /tmp/build/perf/python/perf=
.cpython-37m-x86_64-linux-gnu.so

String dump of section '.comment':
  [     0]  GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)

[root@five ~]#

See the part below, where I need to look at what compiler flags were
used to build the python build, like -fcf-protection.

- Arnaldo

=20
> >   $
> >
> > And here is how tools/perf/util/setup.py checks if the used clang has
> > options that the distro specific python extension building compiler
> > defaults:
> >
> >   if cc_is_clang:
> >       from distutils.sysconfig import get_config_vars
> >       vars =3D get_config_vars()
> >       for var in ('CFLAGS', 'OPT'):
> >           vars[var] =3D sub("-specs=3D[^ ]+", "", vars[var])
> >           if not clang_has_option("-mcet"):
> >               vars[var] =3D sub("-mcet", "", vars[var])
> >           if not clang_has_option("-fcf-protection"):
> >               vars[var] =3D sub("-fcf-protection", "", vars[var])
> >           if not clang_has_option("-fstack-clash-protection"):
> >               vars[var] =3D sub("-fstack-clash-protection", "", vars[va=
r])
> >           if not clang_has_option("-fstack-protector-strong"):
> >               vars[var] =3D sub("-fstack-protector-strong", "", vars[va=
r])
> >
> > So "-fcf-protection=3Dfull" is used, clang-9 has this option and thus i=
t
> > was kept, the perf python extension was built with it and the build
> > completed successfully.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/903
> > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> > Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> > Cc: Igor Lubashev <ilubashe@akamai.com>
> > Cc: Jiri Olsa <jolsa@redhat.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Namhyung Kim <namhyung@kernel.org>
> > Cc: Peter Zijlstra <peterz@infradead.org>
> > Cc: clang-built-linux@googlegroups.com
> > Link: http://lore.kernel.org/lkml/20200309085618.14307-1-ilie.halip@gma=
il.com
> > Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> > ---
> >  tools/perf/util/setup.py | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/tools/perf/util/setup.py b/tools/perf/util/setup.py
> > index aa344a163eaf..8a065a6f9713 100644
> > --- a/tools/perf/util/setup.py
> > +++ b/tools/perf/util/setup.py
> > @@ -2,11 +2,13 @@ from os import getenv
> >  from subprocess import Popen, PIPE
> >  from re import sub
> >
> > +cc =3D getenv("CC")
> > +cc_is_clang =3D b"clang version" in Popen([cc, "-v"], stderr=3DPIPE).s=
tderr.readline()
> > +
> >  def clang_has_option(option):
> > -    return [o for o in Popen(['clang', option], stderr=3DPIPE).stderr.=
readlines() if b"unknown argument" in o] =3D=3D [ ]
> > +    return [o for o in Popen([cc, option], stderr=3DPIPE).stderr.readl=
ines() if b"unknown argument" in o] =3D=3D [ ]
> >
> > -cc =3D getenv("CC")
> > -if cc =3D=3D "clang":
> > +if cc_is_clang:
> >      from distutils.sysconfig import get_config_vars
> >      vars =3D get_config_vars()
> >      for var in ('CFLAGS', 'OPT'):
> > @@ -40,7 +42,7 @@ class install_lib(_install_lib):
> >  cflags =3D getenv('CFLAGS', '').split()
> >  # switch off several checks (need to be at the end of cflags list)
> >  cflags +=3D ['-fno-strict-aliasing', '-Wno-write-strings', '-Wno-unuse=
d-parameter', '-Wno-redundant-decls' ]
> > -if cc !=3D "clang":
> > +if not cc_is_clang:
> >      cflags +=3D ['-Wno-cast-function-type' ]
> >
> >  src_perf  =3D getenv('srctree') + '/tools/perf'
> > --
> > 2.21.1
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/20200309185323.22583-4-acme%40kernel.org.
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers

--=20

- Arnaldo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200309192343.GG477%40kernel.org.
