Return-Path: <clang-built-linux+bncBC2ORX645YPRBR6UTT7AKGQENOWOQ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7F72CB4AA
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 06:46:49 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id m13sf331466pjh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 21:46:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606888007; cv=pass;
        d=google.com; s=arc-20160816;
        b=FTKl7SrsIrXwxHipYKZfICYBT/5wuzmbUh7+XRwzfSyYqEBjtHiJpMpSENisapNZSa
         B7vV+HK5Z8DQFKaHO51selJJGTX4sMsnzq3mNgbE3jg0ciY5Osjc2lXcDjdo9UdAcyKE
         cw/8XE4iwMLV0Li3MVyTX8x8k8EFyLrAX35GLmQ0EI8GsKwabHztPVmFEqcFOKDdDYbZ
         WwhVos9o9NTF0EDHBuohx2YR+H5krajGKcgACV79E+bSaZOsD0HoHHdDllCvM0Ysa3Pb
         rrsMB3s7cU7IkEGwmyH+Emt8OU9Ta5ZEp3F7H25Rhzm9n6dYrFxos6TBnxwXODIt+7N4
         1dgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E7mEI0OCWzFUdQZ+Dz8zN8Bpayxwgo+ktVHG0qgfdrY=;
        b=wA9AQ+3WRr+PxNi0X/2WmY5gtahDvfvjRtU9sWVigo0HRIp07DJ4ZzldwAGlStHJts
         qQM6lOWAn2Si3MuCtSMb24oA9FE3b+0Y8XyRm67v8ZYYYAVqk15ai9SFgTKw4MxWJCi7
         /pbaeQgmcXM9AefO1txGFhXItZ33XvZmuCSGcBnX54VWFt+PUg/av1XpPmAw6GnwpO9J
         tTrVH5Vn10wX4WxS16k/rWcMTpfSogmXgqY0JsGbmnnnXUVBej9RvjfmyVIbfg6OTvXa
         i5Oh6G1OPq4szjb20fLnOQ0JsfrokzkAXvb63sSo0nOzE8MlCsUhtscuDVEPE2HCVXL8
         /EfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bON2yGnf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E7mEI0OCWzFUdQZ+Dz8zN8Bpayxwgo+ktVHG0qgfdrY=;
        b=hmupQ4atSK7ZXXz+OJwJvdRlobqzPRL5DDusHksbRf0b++A2dfpgbEnIZcGBTUrwth
         +4w3l+MtqplNjluioFF2+brPoNBJgmVXHFuMMwwC2J1p5/4NPgAEOOKgHjOzNDiund7o
         QrLL14pnlYq619a4Bhhreivq9KIEonqUqWNO5vSSs1yHeL9/AUjX9gB4z+6c5977E89H
         QJu+B23n6s29Ubu/sP880BcNQk5YkdoX9JtlCHQJcGc8EFtyi604wwW8lyjyDn9ISYF8
         4lvOM2bPXjJ4Xik3wVEFGNDpcgqARhFXrhCqRUl2fBP79sM2+EspjT2ptBONb74LVetK
         OldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E7mEI0OCWzFUdQZ+Dz8zN8Bpayxwgo+ktVHG0qgfdrY=;
        b=tMpWgMRTlB711zcXVBkGWuF0aIeDV2du37iEjHcHPJLKe+1JYwlD7xbzRN8WsodjEt
         Rz396bDHwjR0ROjDA4a8iWDlXgIsInOe9Xvl4QHY9MBH8YNe8u1bB94581Qh7mj9/uoJ
         GXOQ5h9l4jgCNu5RqSIlovC/ZZ2AfO68FA43GpUgmmkiOWlpWF4HXsdvH/VmWHYAxWuv
         fIiiZFb2sZt0YlU0tdvEImRDtREm431YUEfpB8PDfejiAWp+qm8I0ugFgPTtz8OENDmO
         dVtfvhO3KGBcZSWeFrmNYQfAqRSJpZWBEv6uNYrA4sQkQ6CID38Ld9odudBpTuOwy32A
         ulVQ==
X-Gm-Message-State: AOAM530vG5Ladh+cdJQG4G3w6FVFj0DsHPjISGpX/nZMgG3NNEhqac/p
	EYkQQXV+KtDsa//sexN5slw=
X-Google-Smtp-Source: ABdhPJyuludEwF5y3U5kAtHhCkelzlO2IsVCmbqbx3l/R65kH3LECW/B+DgTvGmfQlA8cgLTFdCk6Q==
X-Received: by 2002:a17:90a:5d0a:: with SMTP id s10mr883357pji.160.1606888007703;
        Tue, 01 Dec 2020 21:46:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls524292pjx.2.canary-gmail;
 Tue, 01 Dec 2020 21:46:47 -0800 (PST)
X-Received: by 2002:a17:90a:7e8e:: with SMTP id j14mr850694pjl.60.1606888007016;
        Tue, 01 Dec 2020 21:46:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606888007; cv=none;
        d=google.com; s=arc-20160816;
        b=MgxdKFrHCQAcGsuXtkKSEjy4waRuiYfcY/y3FBZ+ZIV+cPN6aA0o14VCFVu5Y1phdO
         tVf+xhBUvL4eBC2Dx+V2gLH1qGYkHL333x5CQXJKV9uxPNzPKgbqrtdtMooyYvy34Q7f
         BYVx2CBS2tnamVKMAXPVjYUw5xcEIBCJ6psmOvk4sWIAMZyG0oCvWUtZ06YngnUt8CF4
         gVxqho0qEzssrBbPQxoayqSTMFrpjKc6P/N+tM5hN70bTK0s0N9d5pQcp+UZncFkJUKE
         +8VLXj6OMfhbTf//T47Wk3qApByCOM9Za1n3r6e1r5/uM5B5SmwPKbDKazXf5EzDQCfk
         HXVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zIYg3wn3IiOAwIUjN3HHnL/xxZ7BzmV6ArGGQCieAHY=;
        b=LHBBQYTgHuashcpZzcYzz7rM6Pz16Iw8jJHh6Voki2Pz8fedEpJtwIf6FB6/+E8GUq
         02dNomEGr+zf8Z5cnS+woZGdFkG8C6cD6N2KKq0tQ8umEQw32nRJGqIY+pa5R7tf/ucC
         CNAHFiFB20vbGBScpUlUqzW7ACRr7p1erTPa8+V6KV6Q8kEbCgoYcNqQFAjFQJpM7Cq7
         BMeKEJOivjpHDygJpVQDw5/Afc+oK9DzCIQZtOsLBuFNxvMcQ59/YSYVllbih91QfkNP
         At47/BbOqnToyoRlM8EhlJibWBosn5Vn5A7FIEfFSp6YKiID2tEech3w/nSD72AwL+bq
         rqzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bON2yGnf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id d1si56586pjo.1.2020.12.01.21.46.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 21:46:47 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id v185so143883vkf.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 21:46:46 -0800 (PST)
X-Received: by 2002:a1f:36d4:: with SMTP id d203mr580407vka.22.1606888005927;
 Tue, 01 Dec 2020 21:46:45 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201130120130.GF24563@willie-the-truck> <202012010929.3788AF5@keescook> <CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g@mail.gmail.com>
In-Reply-To: <CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Dec 2020 21:46:33 -0800
Message-ID: <CABCJKuf6=nqsUFYc5m91x_H44ojBjoE+BqZr81D8T6xRhWTiEg@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bON2yGnf;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Dec 1, 2020 at 6:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Dec 2, 2020 at 2:31 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Nov 30, 2020 at 12:01:31PM +0000, Will Deacon wrote:
> > > Hi Sami,
> > >
> > > On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > > > This patch series adds support for building the kernel with Clang's
> > > > Link Time Optimization (LTO). In addition to performance, the primary
> > > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > > > be used in the kernel. Google has shipped millions of Pixel devices
> > > > running three major kernel versions with LTO+CFI since 2018.
> > > >
> > > > Most of the patches are build system changes for handling LLVM bitcode,
> > > > which Clang produces with LTO instead of ELF object files, postponing
> > > > ELF processing until a later stage, and ensuring initcall ordering.
> > > >
> > > > Note that v7 brings back arm64 support as Will has now staged the
> > > > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > > > on fixing the remaining objtool warnings [2].
> > >
> > > Sounds like you're going to post a v8, but that's the plan for merging
> > > that? The arm64 parts look pretty good to me now.
> >
> > I haven't seen Masahiro comment on this in a while, so given the review
> > history and its use (for years now) in Android, I will carry v8 (assuming
> > all is fine with it) it in -next unless there are objections.
>
>
> What I dislike about this implementation is
> it cannot drop any unreachable function/data.
> (and it is completely different from GCC LTO)
>
> This is not real LTO.

I'm not sure I understand your concern. LTO cannot drop functions or
data from vmlinux.o that may be referenced externally. However, with
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION, the linker certainly can drop
unused functions and data when linking vmlinux, and there's no reason
this option can't be used together with LTO. In fact, Pixel 3 does
enable this option, but in our experience, there isn't much unused
code or data to remove, so later devices no longer use it.

There's technically no reason why we couldn't postpone LTO until we
link vmlinux instead, and thus allow the linker to possibly remove
more unused code without the help of --gc-sections, but at least with
the current build process, that would involve performing the slow LTO
link step multiple times, which isn't worth it when we can get the
performance benefits (and CFI) already when linking vmlinux.o with
LTO.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf6%3DnqsUFYc5m91x_H44ojBjoE%2BBqZr81D8T6xRhWTiEg%40mail.gmail.com.
