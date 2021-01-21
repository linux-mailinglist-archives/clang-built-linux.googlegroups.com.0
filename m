Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4GBUOAAMGQENMINPNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 124472FDF16
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 03:03:30 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id m23sf233843pgl.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 18:03:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611194608; cv=pass;
        d=google.com; s=arc-20160816;
        b=I1J7YcWq8NBpDYZSZK4OLVB80BYlVh7GUji4PAu3xS5fPykzmrUlxsIJB8WpU8shwX
         4POnA4BBQkjyyq+NgmGh4yC0Oe7VzaZhoahoIrB4sOdZy1tWRAfAyL475BU5iWNySf2u
         jsv1C3Wo5dif+DmAm4kDfBFC75qkuajajXNRK0mVo1fOhJzAzmoKglgjkbqzOn+A8bFS
         6o/wVhbsHYQw/jq+4GVteUWiKINTUBxpH60lBk6NBg0Zopl2FxhUCd2j6h0E0Fb+bK7x
         D/8calVHoXWdwolevBYFsJ8SSISr8UIkvvW47MhJq9o055RkIqWmMQW3rRs9d+3rbHCb
         4g+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cbVNLK7mVz7Gv3mWwEZLOP++StUEr8+9obebeaA6qqs=;
        b=bTe0HAxzV2NZ3D8pTlfhTucKD5oFGZALNBsWRpNsoZRyjSL540YnD8vxGaoQaQVhZr
         rjMYsCHQo+lBT8AnYH9nTpXR5c+M+VRhBnQSlgvBH+2s7vZkSuB2wy8bc7i9pCeO4JFZ
         aC5djY5sNKTLDzGnUZnYrq+lO6TIxLozzmXqR/vesC6NVwe6SM5vhu8cLFH8hUfA5w0F
         He0qyw/bkJ8Vic6XUXcUMpU86xwPqZl2FsYPyMeGtGG8btwndR1i+udy0YpOorsJzvLY
         lp4Gv6BqeI9FGJLK++6rbTmosMtKkWSHLwM/lmJOLJt1No8T8YjltFe1iVUshSc94/Mk
         Tz6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bq+t2V2a;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cbVNLK7mVz7Gv3mWwEZLOP++StUEr8+9obebeaA6qqs=;
        b=Sq/ISd140g+hPrbtfWSxKEwaYsVVWDlH9gAiaQy5ju5VaXcWFTn0G1hFVDM2HECZ6A
         PXgiLz7NZIRU3y2aXmAxepjGywuoCecChChH/aT+DGZBVLxYbKNJCJzYROK2JoFKRxiS
         CePdK0BgqsYSA9lv369L/IdXZfYnje9s47Iwu2PbTkoPi8mFe6F2jLPeY7kjR4pg9aPV
         ouaMUczeG3UXCK9Wh0OZPtEPx+1KW5U6GZEhe16t34FAIDHScLH/nDnD6E19wXzb0bKr
         Mn4VxZHJ+LNDVrL3Dqo6YtSljruxM0dckCjsCPvd1zAeGbMfdXBI26z5vQjFNs+j4yDT
         KnAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbVNLK7mVz7Gv3mWwEZLOP++StUEr8+9obebeaA6qqs=;
        b=eCHdYpgHT2t9WB26poQ/Q80t++Tm3szgpazIRCHJWUNEDA0QQO/SdKAWIGhf2OHU7w
         ckcn1A3CLaCR0SAoKzWQ71RxM6/4fPBOU2ySTaVF4Zpj2m7T7F+TLHPCsnEckrPVjaQI
         mP+cb9A+knZeBXFkYwoJWdzBttl6R/utovOtkaQFMv2f3bzru/6HNDMsaU9LetpZJuVm
         Tq9zr5/+iyMHTxeHGRFxdW3ZsCoDdM7uS8BM9A5rAIwQuYC332vq7beAWqBJzi0AHZ2s
         gTe7NqBvDaPbIAi1OfajfB3R1tG2xj4OgRY8VwlRe6aEVbfGn46pWgzeSORAf4LgOsb3
         vheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbVNLK7mVz7Gv3mWwEZLOP++StUEr8+9obebeaA6qqs=;
        b=GPM26fbSeSz/x63savtZXHHl8htAUm3vXCj8eMiNFqmVXXIqtACGL5xZpFuJUBNCbs
         mC1S9IE6UCCUstDuWM047kkNrzSWFON1keeFNant/ZEWiWNF+N6KNDHJIjGxlpf0ZOS6
         ZU87hJiY4kyg9HhwyJzaeAnq2zpk+v4+s83JgRFPwR0mO1p3b89XVSbwylXI4ZLMWZum
         772E/Bp6QEATkHzSUoBYtJukljjsWMpqZgKvrgYnB+uq88WVk50+4MGpy9ae60wDs2YJ
         KHbOgb3EOXnIqNsXTUx+EzEvgunycHJKe5RUHqC8cC6/HTU5Dyk45YQEUApbYx4PZRat
         0+VA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FaTB73qMU8KwSsVCxC2jTrAW8GGLrwfm/mYYxw3VRv0jq6Ysr
	1OCm8lT4yvoteVo8iycy69w=
X-Google-Smtp-Source: ABdhPJyrGbfdRG3xYtsfsPmygu59n//yifJp8e4PWQ2E+DI5Qr/k6fETzMVLqpaoFSKBiuGvxOZ/5w==
X-Received: by 2002:a05:6a00:1642:b029:1b5:f365:b595 with SMTP id m2-20020a056a001642b02901b5f365b595mr12062181pfc.29.1611194608632;
        Wed, 20 Jan 2021 18:03:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4704:: with SMTP id u4ls274936pga.0.gmail; Wed, 20 Jan
 2021 18:03:28 -0800 (PST)
X-Received: by 2002:aa7:9a48:0:b029:1b7:bb17:38c9 with SMTP id x8-20020aa79a480000b02901b7bb1738c9mr12116121pfj.51.1611194607928;
        Wed, 20 Jan 2021 18:03:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611194607; cv=none;
        d=google.com; s=arc-20160816;
        b=Ry7Kzi7ADdQQG5OaPCfuRMr/GUcujMIt7pUMoP3RfojjEQuKRpnYcLlonP1ZXBjNri
         oBmT5kdptgG3Dg7fkk9m8rrmlgG7kaXw8SFQvFRQMOZfgj6cGm9aYM67tc5gY5oOvksC
         0/ODTN/MKUHdsUwAlQrNuHPdOBTN9MN3PPEbbVWodohGp3wITSv8EoYrnL+/WWsWbF67
         maOYxp02l5rly+lqPbwhNyiI+tlOF4rJQlw5Lz5vqa09eOgP13dbSV+H62W6gx1ra+pj
         1Dg22VeB3MhDT6RJnaRn7x0cd8B2J2BYVBxC8FABM36CQM/p3f4uvbCIaTqYxCNIOlfu
         grKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UQ1sOWJk4CRc1VRTEUkbh3QAItciVZ4tLwnuC/1/JiU=;
        b=s2TQ0fNnDVnFf5NiXYfKETppfPh0pW+HBYwzIGLMCcqGl4h1A/JLAkpVTZMt9C5bZJ
         JwnTESKABSdqcmY4WRHlNgpD058TRqkL0jnu6BInZ0tWVCrufn3JVfdnwm/X+uGDJN7N
         wFP3nqcxuFA1etqvZPl9OeHbc27uqssmbdUG0X/4eXxs+zt4Y1QuiiXVaObyH8JDo1T1
         RlUH+olZFJumMfq1Eo/z1qYz3OcUylca/aVhOiWZYGZf0H1ii5j7MvXDhdrWmw8PtO4p
         FoS5LpDKR0OMX19HUSrZ05heYJl3Z0lVvDn11n0ukCiXO4P3Q25/jmhRGEdShg+SlyOZ
         IvIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bq+t2V2a;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id t25si226842pfg.2.2021.01.20.18.03.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 18:03:27 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id x21so993891iog.10
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 18:03:27 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr10371308ilq.112.1611194607275;
 Wed, 20 Jan 2021 18:03:27 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com>
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
 <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com> <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
In-Reply-To: <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 03:03:15 +0100
Message-ID: <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: multipart/mixed; boundary="0000000000003b46d105b95f7a76"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bq+t2V2a;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e
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

--0000000000003b46d105b95f7a76
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 18, 2021 at 10:56 PM Bill Wendling <morbo@google.com> wrote:
>
> On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > > >
> > > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > [ big snip ]
> > > >
> > > > [More snippage.]
> > > >
> > > > > [ CC Fangrui ]
> > > > >
> > > > > With the attached...
> > > > >
> > > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > > undefined symbols
> > > > >
> > > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > > >
> > > > Thanks for confirming that this works with the above patch.
> > > >
> > > > > @ Bill Nick Sami Nathan
> > > > >
> > > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > > >
> > > > The integrated assembler and this option are more-or-less orthogonal
> > > > to each other. One can still use the GNU assembler with PGO. If you're
> > > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > > >
> > > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > > >
> > > > I know Nick did several tests with PGO. He may have looked into it
> > > > already, but we can check.
> > > >
> > >
> > > Reproducible.
> > >
> > > LLVM_IAS=1 + DWARF5 = Not bootable
> > >
> > > I will try:
> > >
> > > LLVM_IAS=1 + DWARF4
> > >
> >
> > I was not able to boot into such a built Linux-kernel.
> >
> PGO will have no effect on debugging data. If this is an issue with
> DWARF, then it's likely orthogonal to the PGO patch.
>
> > For me worked: DWARF2 and LLVM_IAS=1 *not* set.
> >
> > Of course, this could be an issue with my system's LLVM/Clang.
> >
> > Debian clang version
> > 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
> >
> Please use the official clang 11.0.1 release
> (https://releases.llvm.org/download.html), modifying the
> kernel/pgo/Kconfig as I suggested above. The reason we specify clang
> 12 for the minimal version is because of an issue that was recently
> fixed.
>

I downgraded to clang-11.1.0-rc1.
( See attachment. )

Doing the first build with PGO enabled plus DWARF5 and LLVM_IAS=1 works.

But again after generating vmlinux.profdata and doing the PGO-rebuild
- the resulting Linux-kernel does NOT boot in QEMU or on bare metal.
With GNU/as I can boot.

So this is independent of DWARF v4 or DWARF v5 (LLVM_IAS=1 and DWARF
v2 is not allowed).
There is something wrong (here) with passing LLVM_IAS=1 to make when
doing the PGO-rebuild.

Can someone please verify and confirm that the PGO-rebuild with
LLVM_IAS=1 boots or boots not?

Thanks.

- Sedat -

> > Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
> > and especially CONFIG_DEBUG_INFO_DWARF5=y?
> > Success means I was able to boot in QEMU and/or bare metal.
> >
> The DWARF5 patch isn't in yet, so I don't want to rely upon it too much.
>
> -bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU%2BOWW46CVq4Co-y7hckGjoV5bbqxS-G%2BHDqUDci_AzHw%40mail.gmail.com.

--0000000000003b46d105b95f7a76
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-pgo-Allow-to-use-clang-v11.0.1.patch"
Content-Disposition: attachment; 
	filename="0001-pgo-Allow-to-use-clang-v11.0.1.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kk67iy4m0>
X-Attachment-Id: f_kk67iy4m0

RnJvbSBhNjlkY2MzNzdjNjAxNTI1ZDhjNzYwZTdiMjBjNWQwNmVhZjFmZTc2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgpE
YXRlOiBUdWUsIDE5IEphbiAyMDIxIDAwOjQ0OjM2ICswMTAwClN1YmplY3Q6IFtQQVRDSF0gcGdv
OiBBbGxvdyB0byB1c2UgY2xhbmcgPj0gdjExLjAuMQoKLS0tCiBrZXJuZWwvcGdvL0tjb25maWcg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9rZXJuZWwvcGdvL0tjb25maWcgYi9rZXJuZWwvcGdvL0tjb25maWcKaW5kZXgg
NzZhNjQwYjZjZjZlLi41ZmU5NjM1YWM2NGMgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9wZ28vS2NvbmZp
ZworKysgYi9rZXJuZWwvcGdvL0tjb25maWcKQEAgLTgsNyArOCw3IEBAIGNvbmZpZyBQR09fQ0xB
TkcKIAlib29sICJFbmFibGUgY2xhbmcncyBQR08tYmFzZWQga2VybmVsIHByb2ZpbGluZyIKIAlk
ZXBlbmRzIG9uIERFQlVHX0ZTCiAJZGVwZW5kcyBvbiBBUkNIX1NVUFBPUlRTX1BHT19DTEFORwot
CWRlcGVuZHMgb24gQ0NfSVNfQ0xBTkcgJiYgQ0xBTkdfVkVSU0lPTiA+PSAxMjAwMDAKKwlkZXBl
bmRzIG9uIENDX0lTX0NMQU5HICYmIENMQU5HX1ZFUlNJT04gPj0gMTIwMDAwIHx8IENMQU5HX1ZF
UlNJT04gPj0gMTEwMDAxCiAJaGVscAogCSAgVGhpcyBvcHRpb24gZW5hYmxlcyBjbGFuZydzIFBH
TyAoUHJvZmlsZSBHdWlkZWQgT3B0aW1pemF0aW9uKSBiYXNlZAogCSAgY29kZSBwcm9maWxpbmcg
dG8gYmV0dGVyIG9wdGltaXplIHRoZSBrZXJuZWwuCi0tIAoyLjMwLjAKCg==
--0000000000003b46d105b95f7a76--
