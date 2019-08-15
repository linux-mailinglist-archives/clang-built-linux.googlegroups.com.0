Return-Path: <clang-built-linux+bncBDRZHGH43YJRBJHB27VAKGQENWWFTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C4C8F7C1
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 01:54:12 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id i4sf407802wri.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 16:54:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565913252; cv=pass;
        d=google.com; s=arc-20160816;
        b=YFwPkzkC+l8Ry4JC0d4NJy4qzkzvzWZQDAunh2dOBArnPGaM9uRt4jXSx3VeCmwFS9
         64ks0UNfp0x3YooH2JPzUgoNooDyDwa/FahMhzHhGisuhU5Amk9UdMQXwcE/Poa3f56b
         N+/ZZ7H3rd+pQWvGAx08DgvP0EHhKNWBiVyruupxwBdssM07MpdL0tIDXbCHYkZ+ybOi
         cOiL8L7uCdSHcmaY5UaFhGD3TDR8/G4FjOxqZJSqTWgkOu6OTziyu7D4eNgTobvRYs7W
         oJgn36vIsN3AlxCZ9WTeK/pjTOYiJju8wD+shahGORGxVf1u03vJzvLznn81SxwoW0Mt
         1SXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gXIybatWFc5OsmlhppXaTHRbTFCFCJHQ6MTz/QRu5a0=;
        b=X+MgeGWt2N7Zddrkn+1OAfYjHgnjBxUf1Z9+NhutVF+1qEGDy8v0g7Rnf7idXb3um4
         gJUquvqlCqaXWukeVxy+eDxQd5oXnFuo/8XLKI45echOTkr8SvBasHTcxgroGBl0iwg2
         EAKD0MXoJ9mi2RIeErOzmMmD684yYg1vnJzTqjEemLYkhyKHuLbZg293gnFf90+52Srw
         NzvPnh5m2brZDC1MRCi7bSkbbreFVdmjMecOzVAelzwIOJCHV504bxgUh1NLzNLQN/Le
         5L2HaWsbNgMZFOITb8eBJM4gcvWgOaZUb90kNkkq4SFPkBLAfhJ8rl4V0CNdUzwCLTA5
         Zu3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H/e1PI8t";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gXIybatWFc5OsmlhppXaTHRbTFCFCJHQ6MTz/QRu5a0=;
        b=l+L/gOQ9dNJiV0/wbP3tiO3vaHUzcX96peT4qj7SkKhIVAPn4EYA+PRX3EIJImkwq4
         c5oYyYp8aJPhC1FohQ/QyNPGokb1B0hbVlTcfP0uLx0etpnN7lQVn/JLxqWcLylMz6yo
         FcDpXPnwkAPAkTvLxjVglu67L1wOC+ELyXaXKekq2LaVyhZwKmlriiFYQF57VTQHRyMr
         V+CfYP4vhrcqHswjCBXujV8s1EL65mAgn4hVlvKArNInk8mIO32Rbbpn2UOvtFqunpMR
         rHNTLDHtXHucerL7gJxWT8sNyYKpJ1yLwLlwZ3zg5vEYtMBovX0CVYkucZyR2BL5ZNqf
         tUcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gXIybatWFc5OsmlhppXaTHRbTFCFCJHQ6MTz/QRu5a0=;
        b=MNR+csTPCQKaOZ9ebhuJmWqOV5Lwd9GQ7AHuXtf/ooX6IRNec530xvV0NCS7+aC6ym
         U+yvCIJHBID+0DIcOQZmrQ2S+BtXJqpCwabzxJGB60jWXnAUf1ABv2SouTOcW4eRJfUq
         MGlwT1NkFIGyFDVkyGysRQNRJ2CSh39pBr6GhRm27yVi6D8XvAcjiX1WqtBKAtUpdCRL
         xx3EYzAixYTk15chBCuFm6yUVHds1QXRaVp2fusNgPylOda3dkvuMON6jxZ/O8tXCrMt
         O0+B7765wwIDYP2TBJhOAzV3eVM6rYTKEImx58K1637ooAAQevIlVgDIvPjg3X2E+7yu
         /j+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gXIybatWFc5OsmlhppXaTHRbTFCFCJHQ6MTz/QRu5a0=;
        b=J93g3wGNVTvwy79y9dudYyicge7X1v9uV61YGh8ehpWVvi7dXt2sEx4g+aj5HZJZlb
         A7KLvfkcujo0s9HzUU80v+aDF5HbndzlzhO07HBduq9IOdSZ7W2Q0Doeij6+NRzdabNA
         z3lHUPI/bJkti7QAHG1zYYOQ6KPsxrbbwG16kF+blFeMvDrUli/FdHRiGw2bmDWHlZ3T
         ciw1+BUMJNEFF75V+9nA6Vj+OggT7G5Zlgoy9nO2MzFsBJmn3aN0E55vpVEew5/mWDXx
         Fn2gsiEFnnlsvDmsCwR9wuBr/AAmlyqXfaBpCwxZ08Mt7bed337ccNYbjBj9CIDGpwkz
         HJBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvQRI+6QYKMoM9K3dmKigYaN5bzoVNn54o3c+9af14fcjKVMgD
	oKWZ2/5450aI/wl/PVw+h9I=
X-Google-Smtp-Source: APXvYqzVTS6J8qvvqyy6EA78Fin29E5YMQjbEMzqp403wu780f0L9SHg05vThvTgQH7TxMR9wt77Vw==
X-Received: by 2002:adf:bd84:: with SMTP id l4mr7593868wrh.143.1565913252120;
        Thu, 15 Aug 2019 16:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5506:: with SMTP id b6ls1901220wrv.4.gmail; Thu, 15 Aug
 2019 16:54:11 -0700 (PDT)
X-Received: by 2002:a5d:560a:: with SMTP id l10mr7465429wrv.101.1565913251625;
        Thu, 15 Aug 2019 16:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565913251; cv=none;
        d=google.com; s=arc-20160816;
        b=WbiL67kDIl8SvVXFE7/N3loG+sayR0ho/st7OL6DXR94cZ3aKz1uooa0CSFhVqY3FW
         eAF3CRn15NuZGvu8TQhc1ZPCbULWKGwcEMWU7zUETkRk1CDv9aY14N7Zj3yLhidZQw7l
         zn3fB6H8RTLJU7wujg3JvgSV7K1Hw5VqP6Jxkh/ZtwgzuSpvjR1SFYBh/1TeuXhexvku
         0z697rBFUNp9J1tezLIZSs/NR/mteBhK8HrMvogrjlBagRvJ84ZVkPRhyCnIPzTL+yZc
         B6gcRmImK1C6m3SGeqJc6XF2OgmjmSoCI3EkKk4viuwX11NFMcBH90qmQYNecZFCAPIH
         a0dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uUR8sKJAysqvgde7a/GEolWZUsjVUl8S+CBNn4ZSzd0=;
        b=KP0MGKa+rfnED9TH/vRbjWHvVfzPXXloPdG3kRt++ZpP6FHWOCmjFlW/xb1qQQp5qh
         FMJVR+cEj8enKUZDuhJjF3VWNhyhx7eYHtuxQ4aJm3FLVAlc+fqPH83G7YKKMRZ/Xs7f
         52yzhZLMBwn6bD7xp/inY65zO1VXCtoFAC+qIHOmliEux6bDHtnq/2J+d2gS1edYpm+4
         a5NsluIiNH9IokcL3vu7gEKp481JCZS8BNpNzZGCD7CNAs+Gg153OwH5ZPN1g/h/LPtR
         m1ugu5MUXUjkHgjug2oB5FQf4ow64ludYtwnoWx/VX9MluRPwJLP0f3GACIilgSqNe26
         I7og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H/e1PI8t";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id u18si184512wri.5.2019.08.15.16.54.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 16:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id b17so2809092lff.7
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 16:54:11 -0700 (PDT)
X-Received: by 2002:ac2:4157:: with SMTP id c23mr3561969lfi.173.1565913251168;
 Thu, 15 Aug 2019 16:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190815182029.197604-1-nhuck@google.com> <20190815204529.GA69414@archlinux-threadripper>
 <CANiq72nM4d-rc_qUMUEisXyEU9A0mbW=O_w5X0zoqWNPLacuNw@mail.gmail.com> <CAKwvOdm4Lsj1mPn3+FtPDrNVSQovsw8Fe9u6Yw3te7pD-izAog@mail.gmail.com>
In-Reply-To: <CAKwvOdm4Lsj1mPn3+FtPDrNVSQovsw8Fe9u6Yw3te7pD-izAog@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 16 Aug 2019 01:53:59 +0200
Message-ID: <CANiq72mVSyr6zvem13v5JNR=GTDnB1fgO=9P2Qimc=GekLB-kA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nathan Huckleberry <nhuck@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
	Joe Perches <joe@perches.com>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="H/e1PI8t";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Aug 16, 2019 at 1:05 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Aug 15, 2019 at 3:59 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Thu, Aug 15, 2019 at 10:45 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > * Revert commit bfd77145f35c ("Makefile: Convert -Wimplicit-fallthrough=3
> > > to just -Wimplicit-fallthrough for clang") for the time being and just
> > > rely on adding -Wimplicit-fallthrough to KCFLAGS for testing.
> >
> > I would avoid applying commits that will have to be reverted just for
> > Clang, particularly since it is not fully supported yet.
>
> "not fully supported yet" you say? *drops monocle*
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS?h=v5.3-rc4#n4001

By fully supported I mean it already works and people can rely on it
out of the box using a released version of Clang/LLVM. Is that the
case already? If so, many places need updating!

  * include/linux/compiler-clang.h should check for the minimum
supported version
  * Documentation/process/programming-language.rst should be updated
  * https://github.com/ClangBuiltLinux/linux/wiki does not mention anything

etc.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mVSyr6zvem13v5JNR%3DGTDnB1fgO%3D9P2Qimc%3DGekLB-kA%40mail.gmail.com.
