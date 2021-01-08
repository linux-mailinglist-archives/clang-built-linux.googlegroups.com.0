Return-Path: <clang-built-linux+bncBAABBAHH4D7QKGQEJ77O7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A3A2EF0A2
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 11:27:13 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id t23sf7526388ioh.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 02:27:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610101632; cv=pass;
        d=google.com; s=arc-20160816;
        b=ITbx9B9BVgU4YGKR8yinUVXY+9o+AUDSguYBqHQK3VJe885R4zcJAIRkNR2gSg6YJu
         JUSfcXQ0Oillvfpx308motVbAHCkrc8wAs/dbdzFFq9qgyhHaMAcD08UaSf7nhP9Z39c
         s+UJBP/r1JCDVg3nuhTNi4oQpiwAjMRWzUD1GrdgQBBN9OVZeaz18XFK1XCJzlhnGrEg
         cgCyK290ZpsuDCX7dp/DadDn7unZyXHay9l/nxTHmiAJ7LTrjqOjcALgDNoR+/LRCgL/
         /R+Snbr6J5Bej+s7Btdgc431KNbg8nJIJITOTOzp5fSWL+WxtqkRggGpmP2L/VSYSvb+
         H90w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CJzapHoDjjz08irgu6Hq/sFHLvVFi7zW2VgsBxjWN7k=;
        b=lw7zqQEh6N0vDQDb+EGL3Skmj6/owj4biGONM2ALfUDfWxrrRm/k6kFQyrntp45ppI
         05FIY+cWkCKLb7pL5ht7C502NkbSB+denVDZWIbzt0VZW4F/CJxrP8Jxz92KzU2S3nio
         Ci1FtywtSFhxb+xjZdHZsb1t9XvJO7/RJTRZVWc8V+k7VvMhA3h5bfsFWZfdjri+3zBd
         Z7yEXcGehetDPA0qkJV0W4Ojre9+svpyY7QOSUPtpEccbnyQwkz23Z7+8oI1jp3rORGd
         ZDUQRRFnFQ0jOd6yDsC14ntmijRqqxs+YmJ3e/MHIYalXKVFpSepjYExP1mxaOd3KO0r
         3+Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfZJeqfe;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJzapHoDjjz08irgu6Hq/sFHLvVFi7zW2VgsBxjWN7k=;
        b=JccyBVrR3IzyZsjS8rUNvPgfdZOWYB4xm7YuveobBNa8CmaO6IkvfyPicORJ4UdH+j
         00weBf3ZSF9BExhf/ratS+S7hmEkQzU6GLYmd4to7rzRC9H/oSTqt3axgFs2H7gnabA5
         auVKrs0VWhFMlNGZntpazfCrAff2VN9UBUXUXQghBT2YzdahHFfkGT9HTD0FNKBvEGqR
         tFZ8bVv5qvpZD7FORpx6Ij0FwmbejI8DhJoSP4scNC1kWkXsiNUfPuJBHTK453KR/TvS
         XzlqU5nqXak6r4ai6jLDrrFSoCksdB7+53uC10ehY50RgqLzd2HkWcQheE+vZy8cveb7
         DIhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJzapHoDjjz08irgu6Hq/sFHLvVFi7zW2VgsBxjWN7k=;
        b=o4lxYwwWPy7ot9nCVIFDLQ4KvgD5oSoRVupZcosYqWsrtbID0UdrgU4bR9Ltr5LZ/Q
         Ev69SQsZH8Pl7zx5licpakx6yEl0deS3i59Z56l22Yo2k/7wXJ9MkhYH74gqkikdUorc
         TYI4XvRXKWOJfxDd895IegovKRroNwFBSYBkuBE1b6E5qzhsSXBLf80UqzWKZnduvxLQ
         zBtOKJ6Dd0K1seCF3730dATbMiyzEa5ScdpYSsAMMiIWe6ceWUcDqTKrlcLUCxU7Bzzi
         bSaylqBqJPos7c7CUJj3ZmP1T4VSXA8qlDWRzBxQG7lGnO77/ZRf1B7z82trXAsfzMfW
         ymEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WHlffKXXRUAL7M3zZ9FMDB+edc8O3bk9UsPBOx/vXzzQkiWmt
	nGzX/9ZF24nhYuuzKV3eVhg=
X-Google-Smtp-Source: ABdhPJyYu38v3b/1Jcxz7pe5Aw9KEu7dykL1hOLmGkNRkjmcaGHbqkN/z0sEczDfpITrzNiigEyYcg==
X-Received: by 2002:a92:9806:: with SMTP id l6mr3342613ili.304.1610101632187;
        Fri, 08 Jan 2021 02:27:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls1153733ild.8.gmail; Fri, 08 Jan
 2021 02:27:11 -0800 (PST)
X-Received: by 2002:a92:d587:: with SMTP id a7mr3199259iln.250.1610101631790;
        Fri, 08 Jan 2021 02:27:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610101631; cv=none;
        d=google.com; s=arc-20160816;
        b=z01TgRtUL8N/WSxsokhe8EKzDYcQiAQsWZx22gu7ZboVO847oEpBdG65lMRQJOD7d1
         Akrl/0cAle62kuHYqNw6xxiN66EvdH12lkIQxLAOO6CrOAXZVi6UsvwxZBvuLeD9lPyx
         +FVztLH8/rxn5bB4Dgj/LtucO7kdlTnk1S5e1VyBWaINPuv6BVJKC0Z0J7JCkyRVOT6x
         487YKVD+qW7ASzUBOV63SlMPWN07HFyi5xSy82CF3/5dB0CMGdv/Xaj7qkcjOk5d2uVQ
         7oTtR7s1wYni1eM2MKuGsBu0bKa+ZjGB8bEFhMDg5Bpeg/HdFz6HDeRpvq/LChWtwfCT
         RxHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=quZPFtsS3RF2WXdtXtVx+8ttbvELrimSz2iDzR2Hvb8=;
        b=iXQ3a6yQ8f8qU2StraDO3DZleEvfv/NPhbjyoG2e4oTi3Z1DYimRS+GzQaAt0uwwkt
         KixHCrkZvc/Snr6x5/U9rNKfQPmJzF7qt5/+t+mBRpcU4SYAnpPk0hLqk3qSz67M6pI/
         DkS5HsA6u/ikvefJ3r4+ZRsyNxvNW1UI8+9bmaQH2bl0Khz5fLW8YCEwOpUiWy3NSo+2
         VmyfRvaPYLypcGO0OxkYfyAwK1yqdJCHRJzakNragjDB6fHYMxq7VnoNaOgq0FJ4JgeC
         KLHyhWCgcCQ6cffglNj3Q9DYc6/mEmfLTtCdQjemEkwtVcMlwvi4oEJrpBKtU0YJJ6XA
         v7Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfZJeqfe;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t69si1109154ill.3.2021.01.08.02.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 02:27:11 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C1EBB23888
	for <clang-built-linux@googlegroups.com>; Fri,  8 Jan 2021 10:27:10 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id d8so9217038otq.6
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 02:27:10 -0800 (PST)
X-Received: by 2002:a05:6830:1e14:: with SMTP id s20mr2071633otr.210.1610101629962;
 Fri, 08 Jan 2021 02:27:09 -0800 (PST)
MIME-Version: 1.0
References: <20210108092024.4034860-1-arnd@kernel.org> <20210108093258.GB4031@willie-the-truck>
In-Reply-To: <20210108093258.GB4031@willie-the-truck>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 8 Jan 2021 11:26:53 +0100
X-Gmail-Original-Message-ID: <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com>
Message-ID: <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com>
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
To: Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Mark Rutland <mark.rutland@arm.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sfZJeqfe;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Jan 8, 2021 at 10:33 AM Will Deacon <will@kernel.org> wrote:
> On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > With UBSAN enabled and building with clang, there are occasionally
> > warnings like
> >
> > WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> > The function arch_atomic64_or() references
> > the variable __initdata numa_nodes_parsed.
> > This is often because arch_atomic64_or lacks a __initdata
> > annotation or the annotation of numa_nodes_parsed is wrong.
> >
> > for functions that end up not being inlined as intended but operating
> > on __initdata variables. Mark these as __always_inline, along with
> > the corresponding asm-generic wrappers.
>
> Hmm, I don't fully grok this. Why does it matter if a non '__init' function
> is called with a pointer to some '__initdata'? Or is the reference coming
> from somewhere else? (where?).

There are (at least) three ways for gcc to deal with a 'static inline'
function:

a) fully inline it as the __always_inline attribute does
b) not inline it at all, treating it as a regular static function
c) create a specialized version with different calling conventions

In this case, clang goes with option c when it notices that all
callers pass the same constant pointer. This means we have a
synthetic

static noinline long arch_atomic64_or(long i)
{
        return __lse_ll_sc_body(atomic64_fetch_or, i, &numa_nodes_parsed);
}

which is a few bytes shorter than option b as it saves a load in the
caller. This function definition however violates the kernel's rules
for section references, as the synthetic version is not marked __init.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ%3D4BzqAjceg%40mail.gmail.com.
