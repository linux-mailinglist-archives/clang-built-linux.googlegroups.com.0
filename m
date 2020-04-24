Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBE77RH2QKGQEJNQF2AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B54C91B6D9D
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 07:56:35 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id f2sf4246535wrm.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 22:56:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587707795; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWCE0I90bL8YUO8+9qcV5jLvrl96MTLXMBTi8MfSKFGcT9ek8UXcytKsQf4+elMdP2
         d+Nvvr7cJ20SJh1L7RvrbU69xhVVjVraW/3T0Ra5a5At0Wyen6Da99v6EOyOVGfGNLGn
         zmnlE0wyQVOgHO50D/ZYU4g3WkbJCJc2189llB0nYJB94FESYf3HatyUcbIjIPxMgnTY
         yQgE7s0RIUpB0YtetY2JIPILuBRQCDmbAYjOSEdEMWN5RQIgK4M7h1bOZhNxeLoGL7Jm
         W7laNVLYjzgCundkgUhocdfMzW3IhV1hgwOsE9SRJuRGWu4IP5uB47QLxZbuLXV9dNRQ
         +9+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UEu44URGNIF6sG/aeSRVUiFYjq1qyTwC/l1n6GU/t5Y=;
        b=dGw5rntTE6iBVOr0sxFdPROsyH4ORcH+ji3Qely0uAjkjXj28XkIDv1QxXTcUmXcPQ
         amGivDJloo8kHmVMPCWWxVFkrFQLtl+HwOzS0fsRHpRCHEy5BVsbSQQRONQd8s2NERH5
         t11cGnor+i5RaMU6plywmyHOged7gQEK60MJO6oaq8uwKuIIAe52sCRPXasNPx4yN4Io
         oIWxx7h63AtunB5nIqvRQO8q/1XM73ErvyDL4nmcdQlUX3FkHtIeq6OKx4QV9O2zDT5w
         Jcremcddk9Mn1lk9bv4axatz2MKJfjQ0nutDDbJcMy0ZP+8k5riwSyvTRuvICHOXBmSS
         r7pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A0acEGXd;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UEu44URGNIF6sG/aeSRVUiFYjq1qyTwC/l1n6GU/t5Y=;
        b=sE6LcLQ9+csqAWgwpkEB3I7Z3HvnqVQvNT/Ie7p4Bbx2vaWfRK+wK+IhWK0b78OHnD
         cJq9nD0IFjcKgshmJcyFk8JgUokXpJz8Mc1vUuwoxFBD7qRtJa5UBF21yI1B44Itf8sT
         LNgZHmzExHHXuaxzlPxTaYj9JwFUcSjnECLxq/yuJBHknoOLrMbTnRi4foUmR0NdGyzJ
         Dc5ritE3QgWdiHNPd4fZ3IwifEyI2FCC1cJXSctm+Bc2dk1klYeS5aMvtAAWDE1UIvL8
         sGdLzi0gvaSWz3FMTvTIyc0TZvWO4H5koVi61Z/r8I/npC7VtkCdo6Q+niPvbP7l6ysL
         qWFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UEu44URGNIF6sG/aeSRVUiFYjq1qyTwC/l1n6GU/t5Y=;
        b=MLc330K/AONJMPOydwPkhAqElIZBEHgwm9OojkNvL55IH+w77uwCQlq03z8oggBl4x
         wZr/3G8MKOKFeAPXU6PKYAFB3fnoEZeWsYg4FM8Hc9d+tPpqS+QjvWkFt4mwu4RnkMfO
         V5OhAVlbmCpoCmne61ydYn+LeME/4Z2CKMK4OrsSQNRxW9n0K+MFmsVFBhGapg37/DF6
         HKaRY6tSQWOgtiyPCfTW5APr21apqzR3ercdTmpjV0V58EemxhNmYjhYiJ+JAFveWk8O
         Q6RDdWWc4ViouYqTbP/r+8tDO7bu4v3hLzlrItrYQxV+OTlMALcVumBAHlRHIq521I96
         pDEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UEu44URGNIF6sG/aeSRVUiFYjq1qyTwC/l1n6GU/t5Y=;
        b=ofPYtT9sgMs90PnwmizKgR9vuSjskwRMMvCI+OmWTgG5iyiTtKFpSXnyDJFTrJZ+x7
         cgyPOXa4yJ5jESOWcY0zj4RPFlPHbrqoPuYveptMpEKVhGUn8SyY4bpDGaaxN6wQSDCy
         +TBfS2KkYdUcWuKcUiurzXEoh+LphEkuiVIDFUyAbdHptha3OmYozpLpeIVLwTGOri5v
         OVXDKerc2j0Pf4S3+lys8J7KPzkieXIa8KevOTKXGby53criwGSAMyMBKAyeKNKPXwgE
         AGJPBJnfSHsYTCma8kOQoA2CttIWr7nM7OfcCOYwwM2sB822srj0WwOa+Wd8bgUXxzqn
         o69g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYzbP6JIgSyGJLl12PGM6H2oKhF7+g0csmstQWC4huY5p8ckt4L
	CSdlfZvchAjdxEXn8cIGJNg=
X-Google-Smtp-Source: APiQypJYzFfYmtbvsKvjzew+FImiL0UJjdndKXUI5wrcj8JpPztocu3qhyaq1hJmo//jt38EVh5vXA==
X-Received: by 2002:a1c:dc55:: with SMTP id t82mr8609741wmg.12.1587707795388;
        Thu, 23 Apr 2020 22:56:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls8688550wru.3.gmail; Thu, 23 Apr
 2020 22:56:34 -0700 (PDT)
X-Received: by 2002:a5d:61c5:: with SMTP id q5mr9089644wrv.260.1587707794825;
        Thu, 23 Apr 2020 22:56:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587707794; cv=none;
        d=google.com; s=arc-20160816;
        b=FnQlvvURdgfKNNFnDa9H6xA0aYU5dWLiWI3rknhLE4g8AphSlI/Rn4+TnSH1K88xBW
         Ov/ArMntUASOPNyw/Ex2qAdpJqTI0O2UgoisF9+1ZZvcaI0hbBGgxhcthr2i1F6WPgjA
         9uRV+O+uGHO54xouFCni5HelsBEpQHlczJktx0uRxkvm7YpABJ09SulEqNTOArQXhKzg
         RgwgDCgQs4frJjg/oQlClxA7NgVt5QxYPJ/N8U3eWyo7DrDf9D1j7lhT96HhPxCwfWGr
         STeBBC4ADevMTwex5ugi1za7L4MW462CoROVRv844L3yhrqMYmO43dOI3r3QEVO6Gb2I
         UU1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RwEuL4PRU7ZiIXXogudBG/X0lEu1VFJ0M/eo+6J0PC4=;
        b=VUKnGjpQCpoV1H8/pp/G4ucmv+ZPJoVgHwCLGCMxxrgHNcrvwouAOZbuq5qpZhnb0G
         jkzj/Q3z8iC80ihe5ZCEhaNxradaFQH/p6iWs8qWm+RmGAXUIJWJQdRjHHANxdtjv9N0
         kKnagEaFQk1Wy7QjV1MpIO4+LGllawFBfIt/5EC5s6qfP7590mHXMPllaFVEM07zZz1E
         yuCR5uxt1EoxehzHqfQZ6/mMjzTevetPiCgU8fqCgoesJHAvBCoaniWkruJa3BKBMRkl
         X7+Br1qpd2VON6MjC2vpJxkJ4u7vA8YzxtKk/niBHBHMki3x06vIQimkTz+g8zQn26zD
         x0Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A0acEGXd;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id a5si280277wrg.4.2020.04.23.22.56.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 22:56:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id u16so9298546wmc.5
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 22:56:34 -0700 (PDT)
X-Received: by 2002:a7b:c927:: with SMTP id h7mr7970018wml.122.1587707794423;
 Thu, 23 Apr 2020 22:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200419131947.173685-1-sedat.dilek@gmail.com>
 <CAKwvOd=Rt0q0+nRJasc8GzOXSj1_-jZGNc2bAWJkmd7Vzr8FFw@mail.gmail.com>
 <CAK7LNAQzh8EajBkXSSgFh2=5iF38XvkADf1C7J0JnwTov=NmNQ@mail.gmail.com> <20200424051833.4om5dzimpnvegeab@google.com>
In-Reply-To: <20200424051833.4om5dzimpnvegeab@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 24 Apr 2020 07:56:27 +0200
Message-ID: <CA+icZUUf=3qMmPfqa2wgyVO8Ensnc-o8xaK9zcLxgoqui8eaZA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] kbuild: add CONFIG_LD_IS_BINUTILS
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Tejun Heo <tj@kernel.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dan Williams <dan.j.williams@intel.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A0acEGXd;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
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

On Fri, Apr 24, 2020 at 7:18 AM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-04-24, Masahiro Yamada wrote:
> >On Fri, Apr 24, 2020 at 3:44 AM Nick Desaulniers
> ><ndesaulniers@google.com> wrote:
> >>
> >> On Sun, Apr 19, 2020 at 6:19 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >> >
> >> > This patch is currently not mandatory but a prerequisites for the second one.
> >> >
> >> > Folks from ClangBuiltLinux project like the combination of Clang compiler
> >> > and LLD linker from LLVM project to build their Linux kernels.
> >> >
> >> > Sami Tolvanen <samitolvanen@google.com> has a patch for using LD_IS_LLD (see [1]).
> >> >
> >> > Documentation/process/changes.rst says and uses "binutils" that's why I called
> >> > it LD_IS_BINUTILS (see [2] and [3]).
> >> >
> >> > The second patch will rename existing LD_VERSION to BINUTILS_VERSION to have
> >> > a consistent naming convention like:
> >> >
> >> > 1. CC_IS_GCC and GCC_VERSION
> >> > 2. CC_IS_CLANG and CLANG_VERSION
> >> > 3. LD_IS_BINUTILS and BINUTILS_VERSION
> >> >
> >> > [1] https://github.com/samitolvanen/linux/commit/61889e01f0ed4f07a9d631f163bba6c6637bfa46
> >> > [2] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n34
> >> > [3] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n76
> >> >
> >> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> >>
> >> Just some background on Sami's patch.  Originally we were using
> >> ld.gold (for LTO for Pixel 3) before moving to ld.lld (for LTO for
> >> Pixel 4 and later).  Not sure if Kconfig would be a better place to
> >> check if gold is used, then warn?  I kind of prefer the distinction
> >> that binutils contains two different linkers, though if no one is
> >> supporting ld.gold, and it doesn't work for the kernel, then maybe
> >> that preference is moot?
> >
> >
> >I prefer LD_IS_BFD, like this patch:
> >https://lore.kernel.org/patchwork/patch/1039719/
> >
> >We do not need LD_IS_GOLD, though.
> >
> >--
> >Best Regards
> >Masahiro Yamada
>
> +1 for CONFIG_LD_IS_BFD
>
> Usually GNU ld is also installed as ld.bfd and can be referred to by -fuse-ld=bfd (GCC >= 9, or clang)
>
> The repository binutils-gdb includes two linkers: GNU ld and GNU gold, so CONFIG_LD_IS_BINUTILS would be ambiguous.

Hi,

The last days I was busy with job-hunting, so this is my prio #1.
Thus I was not very responsive.

And I am sorry to mixup different threads in ClangBuiltLinux and elsewhere.

WOW Huh ***Votings***!

Originally the patchset from Nick had LD_IS_BFD, LD_IS_GOLD and LD_IS_LLD.

As pointed out GOLD is no more suitable to link the kernel and thus
deactivated (AFAICS Thomas Gleixner did this).

Personally, I am OK with ***LD_IS_LD*** because we have now
***LD_VERSION*** which was introduced in Linux v5.7-rc1.
We have the pair LD_IS_LD and LD_VERSION like CC_IS_GCC and GCC_VERSION.
The only thing I would like to be changed is the comment in
***scripts/ld-version.sh*** to mention "GNU/ld (binutils)" if you
decide for LD_IS_LD or not.
But I am OK with LD_IS_BFD.
If you ask people what they come into mind when speaking of "ld" - 99%
of the answers of this people will point to GNU/ld from GNU/binutils.
This is simply a fact in the Linux-kernel world.

I am living in my x86 world and do not test with cross-compilation or
any other archs like ARM or MIPS or whatever.
So, I might not catch all corner-cases.

Some bots like kbuild-bot(?) already sent some warnings on my patchset.

My ***main interest*** is to have good support of ***LLD*** which is
my primary linker.

Why?
(Might be off-topic here in this thread)

"Numbers talk, bullshit walks." (Linus Torvalds)

Please, compile yourself (here: Debian/testing AMD64)...

#1: gcc 9.3 with GNU/ld (binutils)
#2: gcc 9.3 with ld.lld-10
#3: clang-10 and ld.lld-10

I have not the same code-base to compare, but first numbers:

Even the combo of gcc-9.3 and ld.lld-10 produces 5GiB more disc-space
in my linux-git.
The debug binaries and the resulting Debian debug packages are
significantly bigger

$ cd stats

$ cat 5.7.0-rc*/disc-usage.txt
23406   linux
1951    archives/5.7.0-rc1-2-amd64-gcc <--- XXX: gcc-9.3 + ld.lld-10
17958   linux
1365    5.7.0-rc2-1-amd64-clang <--- XXX: LLVM/Clang/LLD
10.0.1-git-92d5c1be9ee93850c0a8903f05f36a23ee835dc2

$ cd archives

$ du -m 5.7.0-rc*/linux-image-*-dbg*_amd64.deb
617     5.7.0-rc1-2-amd64-gcc/linux-image-5.7.0-rc1-2-amd64-gcc-dbg_5.7.0~rc1-2~bullseye+dileks1_amd64.deb
424     5.7.0-rc2-1-amd64-clang/linux-image-5.7.0-rc2-1-amd64-clang-dbg_5.7.0~rc2-1~bullseye+dileks1_amd64.deb

$ du -m 5.7.0-rc*/vmlinux*
603     5.7.0-rc1-2-amd64-gcc/vmlinux
7       5.7.0-rc1-2-amd64-gcc/vmlinux.compressed
597     5.7.0-rc1-2-amd64-gcc/vmlinux.o
409     5.7.0-rc2-1-amd64-clang/vmlinux
7       5.7.0-rc2-1-amd64-clang/vmlinux.compressed
404     5.7.0-rc2-1-amd64-clang/vmlinux.o

As said - not the same code and patch base!

This needs definitely to be investigated.

LLD seems to be - seen from the numbers - be a lot of "smarter".

Have more fun!

Regards and happy first day of Ramadan if you celebrate it,
- Sedat -

P.S.: A build of Linux v5.7-rcX with gcc-9.3 as compiler is much much
faster here.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUf%3D3qMmPfqa2wgyVO8Ensnc-o8xaK9zcLxgoqui8eaZA%40mail.gmail.com.
