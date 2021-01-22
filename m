Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMVVVCAAMGQELBA4HAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7832FF95D
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 01:22:11 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id e12sf6146519ioh.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 16:22:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611274930; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8pfUKY6YahpDsgfA+ArCNw+d+xdVvMzel7MSrxkrfonaYF/CCK0sbWZh/6TtiDWRJ
         txaShZ6mTMdTjNO8YzU5/ItN3kDkgzWf7SjRi5r4fh9jPyk7/gcb6IS5XUfjABvclWjf
         DPcvAa3rMHi2kT2dVPksaApIOjY2s6Aq6rm/X+ekZKQjmFUT3PocJeIJ0Ivoha+WrCM1
         8sTT7/qN6WneDOMNI2SxhQHxc7PG4+42h5QFEDP3KS8FK0Vkp18KaKYOh1cIDqfpgxAU
         HBgw+xsho7GqubIjx0Q6GYW6+ANqgOASea1kAtu297lu36v3JCnV1YWwdrOTYLDexh/2
         t/SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=w5YAw4sCsWRv4GlOwAUEjTuEC2IAtMRbHB0//yCK/d8=;
        b=LnJwEhzB0LnnPBDcB1LOMbWqZoPG+ZIH/1Q8raFpdes1w43leI7uPqt6s7rE+Ca+Uf
         iC2jUz5oi/qXLxKhijTUMSezBBPQDSuViux/HJAQAYRN58KteHkJKMrb7t9AkJQu9hWl
         VoAmBOMG/wYTXsSgC5m9BJA6aTF1cuSfeBEiI8r5QAUb3d+gcFFnThi+Shcg0KtRsXoz
         Bq97KqzSKl7DLZro+KFyoFCSAzdCUDFUBnUkbwRXkvi8QtmEeQ2apTfGh6bJIkrHflBc
         QqMFOodPEuVeAgtLuE8sYRFhLrRlpAmnFx24dxgfZ+/tsOMzw8BFxA+t5FbzCcc9OSKb
         iDOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDT0qNta;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w5YAw4sCsWRv4GlOwAUEjTuEC2IAtMRbHB0//yCK/d8=;
        b=TizCgCEHgUFCXsVbWILrP0mwG0f7yiHADHCZ+g7wXrg0vdoleopxbK+BtfN4kgJnGV
         BJ+5+S6Je+u9PqYUHn9nKVNuwTsKCQtnGXSw0HY+Em3Jgzm6KjK71BDglm90jFjK2C9d
         9xcDnq9D+Wy5MpYc+2orbJD75ILtctrJTEApXOt2ml/HX4f4pMI+IPSj4Cev936Zx70M
         4N+TtxBAX3Hiwj5CzOu+BVNjfRpOdrb8Qlm3UuniH7LFDldcrpUvX3NZxokk4ADE3Gh2
         xp2NO3R1YQ65cm+APLZxWcRLVmyfTDvAp0TixFlB28UpyaS1mTNi0Vc+heC/snwxfqRL
         kqeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w5YAw4sCsWRv4GlOwAUEjTuEC2IAtMRbHB0//yCK/d8=;
        b=csxZ4tJyN8zxZ8sDQTx45hwT8nsX/X2OFn+Xb94ZPyNOa8IzMBneMHDw2H03ptFrH9
         Qno3wRkInEDoYTsMdEL2qKIb8IqYTj+NwZureGzKS+aOFs3c92akn8pihe7J+a8SArRh
         j7vOjgbYPA1X6WSVixhMsZc1f2sf5a1FinLCZQw78V8+TdHGzc70Ifh214TB1BOng+Oj
         VahkI2dDbEKyeeqyT4kYZsuCtKB53qUhItu1ZCqkRE/NEHv2v1sublw3AP6h8FnVSRLX
         dMwSf/s8ISR9OEgstcDVsOu4itJx2m70hzTTRMo/2X7sa8rX/OVLk1xWhyyK94BM+Ohu
         72lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w5YAw4sCsWRv4GlOwAUEjTuEC2IAtMRbHB0//yCK/d8=;
        b=QvVS48/iUvsqF34kJOX/x2mJ2KQlELUssZt0LQANjkhozSu0a1ozwB/QWHkVTNlnxG
         l0vlRrhRjzZpsNYuXEZY6iqx4Au1PIfNdDlwxRFWN8HppjtGK18dF8Fp/GmejVSBukiw
         ySgFjxsmjQ3jbW/cIFW/rO1sG5N4O4BFDmpR+yM6IIVh6ZpkWLWsAUWoJkqmQQ3BW/PB
         to/O67m5+R6MFg5cOEo9XN6uttyrtmAWg2hSNIqN6YlFMoY6krt2rinz40Xjajy+UL7w
         9MpN6zv+kzd5zfnsFk1obMPxuqMcidglVmYyY/qtmU6zAjC4JMpYnvHQHwp3QUhVmqFS
         AMtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/A7eQpf9sT8KXFh0h2MMabONuWC2sVPGpqbsCq21Su0OEg4/+
	QdNyVjxNZk2ZeAGwnWup3Ic=
X-Google-Smtp-Source: ABdhPJzCBO8kaX9jk0Mm80b1gTeZQ0RZWF5ru2qA3pTIe/IoaiYtaeikQeoBTjVjPJd60io0CyGh6w==
X-Received: by 2002:a05:6e02:52a:: with SMTP id h10mr1893914ils.1.1611274930371;
        Thu, 21 Jan 2021 16:22:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:52c8:: with SMTP id d191ls484273jab.9.gmail; Thu, 21 Jan
 2021 16:22:09 -0800 (PST)
X-Received: by 2002:a02:91c6:: with SMTP id s6mr1512298jag.78.1611274929869;
        Thu, 21 Jan 2021 16:22:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611274929; cv=none;
        d=google.com; s=arc-20160816;
        b=qJEoobd5wtveLdlaEKZ8uBiFWprYFRJycZ/4PSKhqH/ouQTo/jE+CUIQ8R8rnO97De
         OCo8M+XAPj3RPPfkkEvu4IJW2V/CKL+ut8dat25wDO+SfCKScazdCW4W945PlppVyk+L
         sXlwXEno9QSFb0BWVQGY/i0wBF8lfBPJ1fc11Rv1wrqBsQURxZyheBnIdn1kCR8cH1na
         2tNlBLHY6hn7zK6ImxBdV7JkyzyRqNnPPgxh+KQNDpg7iIB4EApPO+pYHbQOel8+YTsF
         oGiymn9Y8Cow82uo7yYuwAcbW8bsW8/cfeErSnCdF6tdQBfVGk5UQzMgzQTSMyKlw0Tl
         vbmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7RDHBNB2FCL5JuAW2qahbN/lnntexdCOoPo1QguxefU=;
        b=hr5FqKvvYKLfQUrS54jmdJyYE5RfYc+ic2BV641zVf9/hjFt6BJujHkosSGBSaRleG
         E0I3As/ZSQflckC/FWBzyM4CqxEElouJVZ+WVoYRfNBtYW6gA23LSFBaofhwUQdXgaka
         MeIJiVIw3FDY+HZC1SFlkC1Nsf2enLli/Qtv58IjR4U+eUU1Gf3/H7ACFwqtA9drSlfl
         JZqs9znxcURXo0BSyVvzmgo1KpwV72+NAA0wUQczYsh+Nmfnrfzf8IDPLUakdDJ/Imrj
         Omm5jTmPA0bsnuEwYyvEWFT916+BpHnL6LUOw4apB4LQUNGOy6eZrq67+6ZtT0jCiNTe
         e+Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDT0qNta;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id s10si374474ild.2.2021.01.21.16.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 16:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id p72so7746018iod.12
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 16:22:09 -0800 (PST)
X-Received: by 2002:a05:6602:2b01:: with SMTP id p1mr1585423iov.156.1611274929572;
 Thu, 21 Jan 2021 16:22:09 -0800 (PST)
MIME-Version: 1.0
References: <20210116095413.72820-1-sedat.dilek@gmail.com> <20210120223546.GF1798087@krava>
 <CAEf4Bza2W061YpxtUx9ZKQUtE0-tS6gf4yg2Le_2g4kyi3FhnQ@mail.gmail.com> <CA+icZUUGKn4DiBGN8Tq3yrh0NH2Fqboaigwm4Q3yceDJVe9dAA@mail.gmail.com>
In-Reply-To: <CA+icZUUGKn4DiBGN8Tq3yrh0NH2Fqboaigwm4Q3yceDJVe9dAA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 Jan 2021 01:21:58 +0100
Message-ID: <CA+icZUX_DsEi+k5kpko5fxrG2+-oL8H4gVRq93fXHjN6ny9K=Q@mail.gmail.com>
Subject: Re: [PATCH RFC] tools: Factor Clang, LLC and LLVM utils definitions
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Jiri Olsa <jolsa@redhat.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Shuah Khan <shuah@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Quentin Monnet <quentin@isovalent.com>, 
	Jean-Philippe Brucker <jean-philippe@linaro.org>, Tobias Klauser <tklauser@distanz.ch>, 
	Ilya Leoshkevich <iii@linux.ibm.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	Yulia Kartseva <hex@fb.com>, Andrey Ignatov <rdna@fb.com>, Thomas Hebb <tommyhebb@gmail.com>, 
	Stephane Eranian <eranian@google.com>, "Frank Ch. Eigler" <fche@redhat.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Davide Caratti <dcaratti@redhat.com>, Briana Oursler <briana.oursler@gmail.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eDT0qNta;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Fri, Jan 22, 2021 at 1:12 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 22, 2021 at 1:04 AM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Wed, Jan 20, 2021 at 2:36 PM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Sat, Jan 16, 2021 at 10:54:04AM +0100, Sedat Dilek wrote:
> > > > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> > > >
> > > > While looking into the source code I found duplicate assignments
> > > > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> > > >
> > > > Move the Clang, LLC and/or LLVM utils definitions to
> > > > tools/scripts/Makefile.include file and add missing
> > > > includes where needed.
> > > > Honestly, I was inspired by commit c8a950d0d3b9
> > > > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> > > >
> > > > I tested with bpftool and perf on Debian/testing AMD64 and
> > > > LLVM/Clang v11.1.0-rc1.
> > > >
> > > > Build instructions:
> > > >
> > > > [ make and make-options ]
> > > > MAKE="make V=1"
> > > > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > > > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> > > >
> > > > [ clean-up ]
> > > > $MAKE $MAKE_OPTS -C tools/ clean
> > > >
> > > > [ bpftool ]
> > > > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> > > >
> > > > [ perf ]
> > > > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> > > >
> > > > I was careful with respecting the user's wish to override custom compiler,
> > > > linker, GNU/binutils and/or LLVM utils settings.
> > > >
> > > > Some personal notes:
> > > > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > > > 2. This patch is on top of Linux v5.11-rc3.
> > > >
> > > > I hope to get some feedback from especially Linux-bpf folks.
> > > >
> > > > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > > ---
> > > >  tools/bpf/bpftool/Makefile                  | 2 --
> > > >  tools/bpf/runqslower/Makefile               | 3 ---
> > > >  tools/build/feature/Makefile                | 4 ++--
> > > >  tools/perf/Makefile.perf                    | 1 -
> > >
> > > for tools/build and tools/perf
> > >
> > > Acked-by: Jiri Olsa <jolsa@redhat.com>
> > >
> >
> > It's pretty straightforward and looks good for bpftool and runqslower,
> > but I couldn't apply directly to test due to merge conflicts.
> >
> > Also, which tree this should go through, given it touches multiple
> > parts under tools/?
> >
>
> Sorry, for the conflicts.
> AFAICS I should do this again against Linux v5.11-rc4 vanilla?
> Is this OK to you?
>

I re-checked:
This patch was on top of Linux v5.11-rc3 and applies cleanly against
Linux v5.11-rc.

Please let me know if I should adapt to a different Git tree.

- Sedat -

> Good hint, cannot say through which tree this should go through.
>
> - Sedat -
>
> > > jirka
> > >
> > > >  tools/scripts/Makefile.include              | 7 +++++++
> > > >  tools/testing/selftests/bpf/Makefile        | 3 +--
> > > >  tools/testing/selftests/tc-testing/Makefile | 3 +--
> > > >  7 files changed, 11 insertions(+), 12 deletions(-)
> > > >
> > > > diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
> > > > index f897cb5fb12d..71c14efa6e91 100644
> > > > --- a/tools/bpf/bpftool/Makefile
> > > > +++ b/tools/bpf/bpftool/Makefile
> > >
> > > SNIP
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX_DsEi%2Bk5kpko5fxrG2%2B-oL8H4gVRq93fXHjN6ny9K%3DQ%40mail.gmail.com.
