Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLVSVX4AKGQESIFA6KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B39C21CAFB
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 20:40:49 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id j17sf8892143pjy.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 11:40:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594579247; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhDR8BZfIURNaia37+3PxCY9iFAXkQMb4R/9oUR3jpqnb015fhi9IWn7Z6oONHd2NB
         4Q625968QDdX/1w480T98NsOeB1fQNsa4mkvqJKvMLtsW8KfaKdksmsYVNmVA/LP6eDV
         9gfii8CCmZ5+RSrOyux3M8dFWMoNcLRPBLPrrSGEsIgiYq8yjQ6j9PsGKtQFeCPVlaJ8
         bPJM1xziNLV0kr0knhol5VG5CS26l+gPgADAt+dR9U2wGBEcOQJjkbqquI9EljZFbc6+
         uHk8QKIwI5sSak9lBf2D1FrP6VA6J2oUuY6GXvJNi4CpdF1yQSsatdmVWI6/yFoOEWx8
         i49w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=0JQgFdPtjGjkbzcctLdoIqVrLw7XLqQ7uwse1vu2+Ys=;
        b=y3ruaZQHlAX6pZZO7VBC+3YF7CFJZo4QFqR7DOxj8zrTxL3x4vy8KUAFp8rsfcOmeX
         OC14IiKQkMZu+7Vb5V24cmGs6K79NHB+UyFDKe1LlibJlUmGkBWaLJKwcTgGkRbJNUtK
         qqKevwNyY6Sgouype0wDdTTtwtPsbgRovLr2dAisBu6+gqBpYhWp7U4LyYfsjurZ+Uu0
         mLUODCqR85Y5jq3lP2dHMLSVJEQQwOFMVzI3BW+bulglXFcmrbrXjfRmdH0rzXcdDjNo
         Pb8ujlNfeIlX9kR6ZeIBRNqhF+bll9/5PfhYR1Aw+bU+C+rhPCbpfhTIEWnYPBcpRGQU
         qowQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N0HHcMjV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JQgFdPtjGjkbzcctLdoIqVrLw7XLqQ7uwse1vu2+Ys=;
        b=rfVUqgX0in5C0K665zb2XDLtpCZRHQIbjDiGy5JYvo4p/pEtH0slfwTpm4spS3W3GH
         Fa1JxQvVRrk2I7OJeu8qh0F08OMIYhQjPprgDT104w6LGLvbGIAU46/8IqPAK07fvzXJ
         TO/QBARhD1fAnQzfe4bzOQNJO8TVG6LMNzNEMGASVbajtyVMMHDDO7pMuq03IDkhuvMp
         Gh7cQOa3lgyt6aT4ObxhvCdE+dXAvtEuA7JZ2mNRl2FAdM35/dDdUtFkh2I+eWtG1AAV
         apqD4E1dyodrzP7TzSK27GnikDZMsoqP4RLSsB7CZHG+qtSJjjuFa0KEUXwqKQLCm9jf
         vx8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JQgFdPtjGjkbzcctLdoIqVrLw7XLqQ7uwse1vu2+Ys=;
        b=PX16yy7Sk0cG3AjNbftLnHe+Jk+cfQz+MPn9y/ITTXI8KFN1AGlNzRneimsHvdrlv8
         p+/ePxPPMrb8vPRsGkilNw6FsWMFz/jE/O9XHbmwXxwTiaom9030VPGxfYqlu41iwKXg
         PWb4Dz4jHkrhEjB5RFMI25OIG4YxGHRmfVv5FxzggLY2RODwu+kaGZqiOV2HLGsKP+QM
         9Jv1RdYyUeNVINS2TfffgdR1f96MPGCbvhg/Hghyne2Epb+HqDSK14Pca+8eD5C9wgqk
         rywFivxGUNz5wu3YClw2KUQss0SV1N7PTNID4aersSVy1XvR5Y/zVg+kxbdiqTcclApk
         1DgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JQgFdPtjGjkbzcctLdoIqVrLw7XLqQ7uwse1vu2+Ys=;
        b=P6vyyMvImdvuwS/G1fBo9aMv6Ag9tr8kPZk6Wi8/CDpU5B5jdgrMuVnI+KkfNVvHD6
         4WgZH1TQmpSMAyXpCJaeQSXh4e/ZOS9Q3uqy8ISkNgB/uJPlOP2EoSa0bCfzutiKCltB
         Y49YtreVT9j1io4EIZbAN1LBLiGmSYLO8hhUO2c0X4orr1inevdQDam5qlC3PWwC7xkC
         jFmVZP3zB10zXvqO2HgFu7u5Xt0dB++4NZwAAolGduqkMbdoYlPWgsPd4LddkeNSpS6r
         eKNAj1v12STpE/Cz0ZtGwrvzdySBPvpST+qh7UTrxIOKkXSKEXv1Kx867oo8zO6s0ohA
         tvQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zf+3pwUE3r+V/TZ9o5FdSTTq6wyBuFboX2c1Hx9YfmLfVeOhP
	uvk6yO0oitEdO9OYKFL+gnc=
X-Google-Smtp-Source: ABdhPJz4Kh8a21AZS6wruPn/GFuh/ulI7F6TMvBMMY7ZWGmF35wt+fy15cFwW+O9Cmhs9QS4vij+4Q==
X-Received: by 2002:a17:90a:3624:: with SMTP id s33mr16359814pjb.148.1594579246534;
        Sun, 12 Jul 2020 11:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b288:: with SMTP id u8ls5712711plr.4.gmail; Sun, 12
 Jul 2020 11:40:46 -0700 (PDT)
X-Received: by 2002:a17:90b:4a4e:: with SMTP id lb14mr16880335pjb.196.1594579246065;
        Sun, 12 Jul 2020 11:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594579246; cv=none;
        d=google.com; s=arc-20160816;
        b=voWOqI1BwXWSbwXH+lg9GBov/DuEEvVf5+Nqic4wmtw5sQBTq8JORgVW/thO1TU3lA
         H0FLNXt5ITaHYcP3ELTAtyEie02etsReuStax/wG4BDPhYXj7AfRU280dqW+Wzecg0Mo
         HDb5XmQyT4c/M/O/0nd4yRqhtxk0JV6dCekhv1eE8uwNWOkDO99Sib4Fy5dGmns3Pb35
         gnknOCg2tkLzEFNPIg29H2nsfrU8UAKZS0dRtJW+HiQVERutTYwsw89vatC9tIo42IJ6
         UVYItULjN3EXxv78it7bWWMMs+Sd/QU20oI2b+bwy+w2LRBcB0Bv4oylgcDs7W2h9STZ
         SBKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5TJ+34sQAVUrawBXByyfuwrbgj6i1cli/YCTjxtCBqw=;
        b=KPZTuCg+Gdn4PWshOI9xpcoRngAA6/1RyzR+fzzTSVeB9sFJtva0BFm9Gl7ZkCgd+E
         e17N7sl6eVQ9q01WaQv4Fft/syKrrD5B4TY8QpywoQuOj5M05QB/gb/RqwdDXdIjNaKN
         4pBi7+bZX1+CMtqBTM9zwyvsHPdYfGyOo1n6r6jW2x9puMgmzks4BvWBkGzHirWnNHU2
         uPuLsC0N1gTUasLtan9eAKaGIOVeVrQNxZJy+8HLH8AvFU1fuJWFF4MzKypD9B4YUN0h
         VPcw1BM3eMqDlfJ9nV8okC8NPtVuvJ/nKqaZJR+qhy7DdKJGO1Tg4dXhwqhRiUjW8gv5
         Eisw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N0HHcMjV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y20si591689plb.2.2020.07.12.11.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 11:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id s26so4982475pfm.4
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 11:40:46 -0700 (PDT)
X-Received: by 2002:a62:29c6:: with SMTP id p189mr52732155pfp.55.1594579245655;
        Sun, 12 Jul 2020 11:40:45 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip98-167-246-98.ph.ph.cox.net. [98.167.246.98])
        by smtp.gmail.com with ESMTPSA id ci23sm11966956pjb.29.2020.07.12.11.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 11:40:45 -0700 (PDT)
Date: Sun, 12 Jul 2020 11:40:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200712184041.GA1838@Ryzen-9-3900X.localdomain>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
 <CA+icZUXPB_C1bjA13zi3OLFCpiZh+GsgHT0y6kumzVRavs4LkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+icZUXPB_C1bjA13zi3OLFCpiZh+GsgHT0y6kumzVRavs4LkQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N0HHcMjV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jul 12, 2020 at 10:59:17AM +0200, Sedat Dilek wrote:
> On Sat, Jul 11, 2020 at 6:32 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote=
:
> >
> > Dear Sami,
> >
> >
> > Am 24.06.20 um 22:31 schrieb Sami Tolvanen:
> > > This patch series adds support for building x86_64 and arm64 kernels
> > > with Clang's Link Time Optimization (LTO).
> > >
> > > In addition to performance, the primary motivation for LTO is to allo=
w
> > > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google=
's
> > > Pixel devices have shipped with LTO+CFI kernels since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM bitcod=
e,
> > > which Clang produces with LTO instead of ELF object files, postponing
> > > ELF processing until a later stage, and ensuring initcall ordering.
> > >
> > > Note that first objtool patch in the series is already in linux-next,
> > > but as it's needed with LTO, I'm including it also here to make testi=
ng
> > > easier.
> >
> > [=E2=80=A6]
> >
> > Thank you very much for sending these changes.
> >
> > Do you have a branch, where your current work can be pulled from? Your
> > branch on GitHub [1] seems 15 months old.
> >
>=20
> Agreed it's easier to git-pull.
> I have seen [1] - not sure if this is the latest version.
> Alternatively, you can check patchwork LKML by searching for $submitter.
> ( You can open patch 01/22 and download the whole patch-series by
> following the link "series", see [3]. )
>=20
> - Sedat -
>=20
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuil=
d.git/log/?h=3Dlto
> [2] https://lore.kernel.org/patchwork/project/lkml/list/?series=3D&submit=
ter=3D19676
> [3] https://lore.kernel.org/patchwork/series/450026/mbox/
>=20

Sami tagged this series on his GitHub:

https://github.com/samitolvanen/linux/releases/tag/lto-v1

git pull https://github.com/samitolvanen/linux lto-v1

Otherwise, he is updating the clang-cfi branch that includes both the
LTO and CFI patchsets. You can pull that and just turn on
CONFIG_LTO_CLANG.

Lastly, for the future, I would recommend grabbing b4 to easily apply
patches (specifically full series) from lore.kernel.org.

https://git.kernel.org/pub/scm/utils/b4/b4.git/
https://git.kernel.org/pub/scm/utils/b4/b4.git/tree/README.rst

You could grab this series and apply it easily by either downloading the
mbox file and following the instructions it gives for applying the mbox
file:

$ b4 am 20200624203200.78870-1-samitolvanen@google.com

or I prefer piping so that I don't have to clean up later:

$ b4 am -o - 20200624203200.78870-1-samitolvanen@google.com | git am

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200712184041.GA1838%40Ryzen-9-3900X.localdomain.
