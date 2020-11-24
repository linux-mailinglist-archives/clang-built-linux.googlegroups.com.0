Return-Path: <clang-built-linux+bncBCV7NVMH5YOBBDF26P6QKGQETEPX37Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD1A2C2290
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 11:14:38 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id w125sf925871ybc.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 02:14:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606212877; cv=pass;
        d=google.com; s=arc-20160816;
        b=QtxBacXPsdJNjbCSEh1xYFnZzMnWh/9+gXbL/8YnKZRDC8aKOBct78EpnJRfIvJMYY
         0ScsbI996iYpQHBxq730c6dmtYAg4bES2JbrKZF+hhmBqDUC1ZVi4pBi/v3bFgwZFxp2
         UGzG88LIKJhiEQrCtZsCz9AMZ4arFzQWh7NdKIzxHfehgn1jphV/pgPNRnz6f7qbiUcV
         hQ4W8D1rZWJ3VB34/zGl6eSV1G1jBRiIOofaxzG/LgKDltlEVwYDXkhUNSfd0mIm3VI5
         pIw8CyHPolBd2wI/TzsfuNv3fzyAgidPui0jRttpK5p6N0gKeu/qZpZUPLSb/Rf/EhDJ
         e5Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=u1lbN7Lcb6UvNK5TCJdyfSBVfDZ5Af/bdkSrzNcStMU=;
        b=bD4HGvKMt1N9s8ByuJppPstiiOAN3cLZflf/cepJmD+yyV+8xKoY5Y/XiA/nXxI8NP
         ghAiFsw3RWRt8qhgzeQBj/UlTImRQBmh6Mnkhs1SuwU5mKywZb3H6XAJleCExvAnp2me
         loGvEp7GjjVRsCdl8RKZNcLyiFjwLqDuy30MLQf09XLzDzddGI/R+57qhcllUKD+sIym
         yEzKZFSud1dA6jCQ2iQwPZGrhCdJr73iaBc5b4D0rjTvp9+PaNDMBnys/grYnCwVjtHS
         711cZ5Yicgz6xcY2BT6qQyymlrbn2dMltBNht0oxZQ6zD8pjJ/aL76zHUMZPmFfv0A5L
         e5Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ju06R1hN;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u1lbN7Lcb6UvNK5TCJdyfSBVfDZ5Af/bdkSrzNcStMU=;
        b=K6xNSkY8od87GG8B4NMaZzrTujAeeuDCxAFgyDwONIQEReQpZTeZAYhmJapSDz/qaA
         5zEr630eKhRwXBZP7D2cuELsbbqQFr+Ewy9+lYk2AP+Qt4gw4CT/0jZlJzwB8bMxzipL
         PUjQ2YS7h/WRpmyTc2nh75r0Oitpm81KwWSSaN2eyzhGNEaJr+HYGksTa9N+o7QM98hx
         Xskrwqlp09OCWH/PFMpW7XkxjJdGAZTRFSXqqJKHOQI/Yz81pku/ZeoFH1l1CrL3GdPU
         UmAbGluM72O0Myd+9L6909lc5k6h2iSt72zD/sDOdYDL33eutmnZTYJ8uimm90xAvkiD
         mXgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u1lbN7Lcb6UvNK5TCJdyfSBVfDZ5Af/bdkSrzNcStMU=;
        b=OpQRlYxxcI+r6oEiOLf/UkQZ1NV+o1us1v22AU7qTif95zAevdDNiQafVKwMYa+tpU
         WR53uAA1Kp81ZPhTwTatTL1N7qj4laSvNhvLFY+TbZcNwzZTz1ZwGvsSQVhlnnwzmSwD
         Kqfblz4tqhjMDtOTnTAhlzdTlou8u7MuX3YsbFMZSVBcKh+wHxGQZrxyCRBBH5DKyTP3
         OLLFUHCgJKkgHVYevm6ZpGCi1CHoYrt2CQKIirgl8cYDr/epECAl9st7+ZffAflFKO+d
         eW6z5AFP3zF1M+EKRelEEdmxsqde91GbE3QuVcLAN1Gzw8qWLAw2d3UBNflTWnYPwgKU
         1Qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u1lbN7Lcb6UvNK5TCJdyfSBVfDZ5Af/bdkSrzNcStMU=;
        b=ZZcVCxB1iIh5GTSiGqcNBoo8eTlEGg84GFPg9bzIVwnfWJ4zUeflZNyZlrdF4T5BUm
         aIZykXq1zLtHexk/1rPEUohDDazGV72mqNboZk7ELyQoH9WOk55XefO3z1bZQPAkOaoc
         GhIJB3QT2RF4LvhhQVc085iTrVCDCyv4Eo/YkLNae+1vA4IrbZw/baXraDkXZYjiPIZo
         eKOCXN59psy57EtCSYNxZq6ew9XXyrjqoyKsphGM/rtk5E9dfR5o/qwhXDayfKvmdmh+
         JQYn6AMtKY9EB1ZMr/5/9O7Pucl8u/X297wWkHOTc2Qk1o/SEmD2c3CsesykATVA+dIh
         88XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mFVtDgmzSmhbNqO5EXxa0b9xduf1UsKor/bk2zkZc1gkwUTJ5
	668R1ReN4XeW99gpOE7fDdQ=
X-Google-Smtp-Source: ABdhPJzpR2QvBCjEaW22IQwAY/+6jmD59dJhhSr4Dr1fdZZ1Ft1791a5ILqjpZ0l22T2oNWHN4yQJQ==
X-Received: by 2002:a25:60d7:: with SMTP id u206mr5386170ybb.315.1606212877003;
        Tue, 24 Nov 2020 02:14:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6908:: with SMTP id e8ls1455680ybc.9.gmail; Tue, 24 Nov
 2020 02:14:36 -0800 (PST)
X-Received: by 2002:a25:3614:: with SMTP id d20mr6094144yba.415.1606212876550;
        Tue, 24 Nov 2020 02:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606212876; cv=none;
        d=google.com; s=arc-20160816;
        b=wq+EzF6scCc09J+ixQYlX4aJtRzZvGYjPvf7DJvpYaFWtOXsLClfmp3qzmiRUoDuM2
         sbRZpPewlqKCF2AlVdE1E7L/jvFtD5nF5i/lXWtSaKDeq/QZLewKB9j4rTWqOUWwAaA/
         UoJood5JmtQkK2BJ4wTaEXKBq+0oXuSGLL3RgFlV58Fp+o1it48pjMYybSZZ/VGS4Dzs
         7048F32iXcrbxy3kvftoN/IHGjOhz2tepoU2OZE7RBTolnRYN+5tijN7L0OjXWR7SW5e
         8f9RTMW3QvDb/6ZmutgWlllcpaRQNgac3tlNJ0jnRJ5geBJkmRneYAqreMVXn6KHptl0
         MXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=M8HFvC6koH2vnTmM34smDb99U2wEfBkWSIiLyvwwry8=;
        b=CZcuVt+VZN4pdGdncCItDuwlEpoyLt4uDNsL0bc2MaX5kFg78VJaQMOjAjhE0xdgpz
         7Oi8/GXKR8tsFwBBcFpBFSPEgTxvn+geoxkBYt+XLiD22s9EfrsY9ORCniGHa25lffSh
         ewkEsMaCyKagmH+BQmR40CZ3R28obRLMdc9fy/szlaku2A+zjMxl3DLv0yQKRXGgOvsz
         PvdlOyh72M2cqU29BlyOvGUGF6XHyGb//2bVSpgNBu9sHPY9sbN4ul8/48bP5Y94Kh1D
         LML2hA8XSeCq9IOai9mtJoC6X/ePpEq/vcQ6k0T7SQ/RVQjVWt8D05NTJ+FuqGA3Jn4E
         3RpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ju06R1hN;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id l7si834227ybt.4.2020.11.24.02.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 02:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id v143so19902372qkb.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 02:14:36 -0800 (PST)
X-Received: by 2002:a37:a101:: with SMTP id k1mr3649363qke.447.1606212876108;
 Tue, 24 Nov 2020 02:14:36 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com> <20201123181602.GA2637357@ubuntu-m3-large-x86>
 <20201124074211.GA26157@penyung-VirtualBox>
In-Reply-To: <20201124074211.GA26157@penyung-VirtualBox>
From: Antony Yu <swpenim@gmail.com>
Date: Tue, 24 Nov 2020 18:14:25 +0800
Message-ID: <CAC5oF3W+RkcO-dSiKXGxVvhBGb0n7fQ-KvdjbPNJJVadv6qNBw@mail.gmail.com>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Pen-Yung Yu <swpenim@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: swpenim@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ju06R1hN;       spf=pass
 (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::742 as
 permitted sender) smtp.mailfrom=swpenim@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Antony Yu <swpenim@gmail.com> =E6=96=BC 2020=E5=B9=B411=E6=9C=8824=E6=97=A5=
 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=883:43=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, Nov 23, 2020 at 11:16:02AM -0700, Nathan Chancellor wrote:
> > On Mon, Nov 23, 2020 at 03:36:32PM +0800, Antony Yu wrote:
> > > __do_div64 clobbers the input register r0 in little endian system.
> > > According to the inline assembly document, if an input operand is
> > > modified, it should be tied to a output operand. This patch can
> > > prevent compilers from reusing r0 register after asm statements.
> > >
> > > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > > ---
> > >  arch/arm/include/asm/div64.h | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div6=
4.h
> > > index 898e9c78a7e7..809efc51e90f 100644
> > > --- a/arch/arm/include/asm/div64.h
> > > +++ b/arch/arm/include/asm/div64.h
> > > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uin=
t32_t base)
> > >     asm(    __asmeq("%0", __xh)
> > >             __asmeq("%1", "r2")
> > >             __asmeq("%2", "r0")
> > > -           __asmeq("%3", "r4")
> > > +           __asmeq("%3", "r0")
> > > +           __asmeq("%4", "r4")
> > >             "bl     __do_div64"
> > > -           : "=3Dr" (__rem), "=3Dr" (__res)
> > > +           : "=3Dr" (__rem), "=3Dr" (__res), "=3Dr" (__n)
> > >             : "r" (__n), "r" (__base)
> > >             : "ip", "lr", "cc");
> > >     *n =3D __res;
> > > --
> > > 2.23.0
> > >
> >
> > I am not sure that I am qualified to review this (my assembly knowledge
> > is not the best) but your commit title mentions an error when compiling
> > with clang. What is the exact error, what configuration generates it,
> > and what version of clang? We have done fairly decent testing for
> > 32-bit ARM, I would like to know what we are missing.
> >
> > Cheers,
> > Nathan
>
> We have run fail on android R vts vts_libsnapshot_test with kernel 4.14.
> This bug is triggered accidently by a workaround patch in our code base.
> It is fine on a pure clean 4.14 branch since __do_div64 may not be
> executed in skip_metadata.
>
> The attachment are .i and generated .s file. .s file can be reproduced
> with clang -target arm-linux-eabi -march=3Darmv8.2-a -O2.
>
> In function skip_metadata, it loads some value to r0, calls __do_div64,
> adds 1 to r0 and stores it to [r5]. It gets wrong value since __do_div64
> clobbers r0 register.
>
> We have tried clang-10, clang-11 and android prebuilt clang-r383902b. All
> of them have the same problem.

Sorry for the large attachment.
I put .i and .s files on
https://gist.github.com/penyung/274b0c697062a1c776994bb40243cfff

Antony Yu

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAC5oF3W%2BRkcO-dSiKXGxVvhBGb0n7fQ-KvdjbPNJJVadv6qNBw%40m=
ail.gmail.com.
