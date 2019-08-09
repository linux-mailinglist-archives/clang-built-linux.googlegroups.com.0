Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBU7WW3VAKGQEY5FEHFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7E08826F
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 20:28:36 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id b7sf25359291vsr.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 11:28:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565375316; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mi+j5kamzjlxGSptQL3giGus58VAhu+n+1qrk3P4MJ9ek6x9W9a9r0icl0EoViuNW3
         gV1xwtV8i+LBIAYW9wwG15yCz7jHEuhgSV7DyEPppyntQVNBrIHI9wHsMs0uYbL0dwAj
         xhPJeCS2bbc+aCshS70YZbck2LD+OE9TSCS3aRnfZGKdDKZr07k1ghlkBTLtTFT4bA+L
         IibnNYHd+eGn8yp0S8PXDOofpHMYXFmAnUjEBJa5QlJvrJI3yPw9Io+UtwtAhk4/WoX7
         aplL6+ohn6l0Szwj0SrkfVXPSkwdtH4XjChRbZXvymj7zkWrzgHBPgX47GrcIrvmq+Ck
         fjGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=IwwaBR+6vcORAc9GuwrCHCTsQwBJhJXLnf3Mx5cpq7M=;
        b=dEhBEbesYzQidoWrTzzUkNIWCqRZSFUetjMAX4mBur/nKl3k+C6c78T2oHKI6fC+Wj
         ZXr7gfkGXVYBLO0BIOYyvoF+aE0oMDkIb4xWIB4p/7yYdksvgMDScoXYZfY0slevYP0p
         6Q8CqqMpIh/dmbeF4/1h3rg5V//OeRA8CWF7L6SWrFn3XKBNUHpXewUIVgzTjdb+FXIT
         p6kit4wVRg7ksZPe4/fIHxsu+M/NBVECS/qCreOrPdJjbh5EDwkdcXIVjTH8eZ5RAQrM
         8IMCRTxqn/IQz+2drT0m4Le6YGLUSzR4jOKtvFCuB95yNAuS0/eu/aArgwSX4v7PPASW
         XmYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IwwaBR+6vcORAc9GuwrCHCTsQwBJhJXLnf3Mx5cpq7M=;
        b=mfP1YvTtBLgS+UGo9gkLvJW/g7aIhpmFpsxfXDs6KNXCyfwjHELOU2sBpnm4FAIX2H
         /Up7iC/sXk7ktJlJ7K9q8qJ3wjN2FmJPisddjy2UyxYQn37x6+Skgv+1fO8zvPSJ0Rwt
         wpWrzrKwoavmO1KD+Y1/yd37XhNRd3sJV3BJ5RyE/TtsbFT32/gdF4cr4bXJrX5XWiFh
         hNUd+ZYayA8xEtfv0qDb+6BIq1I1BU5Y59jpgXUeICOgFjWZxbC4lqOTBoy0Wft2Llng
         MfccaI/GKkl2RrFJhSo8dyW/F9ogT/C9+lPdVSXgsNxI4/r9B72lA3fDQQ98DtkFpZMW
         ux/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IwwaBR+6vcORAc9GuwrCHCTsQwBJhJXLnf3Mx5cpq7M=;
        b=Rkl7dXQOPDOiOAualaOtm5kln+etY4bP+GELRPefcdoQHg24cyQZkphDMjFfPLf2yn
         9hNDeQMzDPiC8eS9QTcz77fVuS74BrwnIC8IPYsrUrxQ4OOcP0nuWXLuPMM3Kf4hE8RC
         h1D5S5WEn1QnwJzuMGscYaiFMVx4KVkbG3fxuwQSd0kPmSFrkdeXtkTOeYeYnOpKV5J0
         hOKB9NQhreif6ks8PgPWrLAKm24MoTokIFLVpsJCHcly2qxTbaArUG9+H355lwvZJum3
         XtxCPzsMzIaAfUsugkHgncxZ5GCPvmmD1A7XGGQt9bPTfdryWLhducl7zpKamATycGgy
         HVUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUd1+f3FzscWlbw0Dlt3GhD2DaXJpnEXIpGDbtCo7tFCi9TFiDT
	a69iBi7bj3zFCB4tVxP6NaY=
X-Google-Smtp-Source: APXvYqzAwqXR2zVuLZOYNNix1l0scx4Z5vnEhNd39HuLIRCgupUUvPHmhbkNgxBbRht5g06kSRUa5Q==
X-Received: by 2002:a1f:cf42:: with SMTP id f63mr4166952vkg.91.1565375315727;
        Fri, 09 Aug 2019 11:28:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8cc8:: with SMTP id o191ls12302140vsd.15.gmail; Fri, 09
 Aug 2019 11:28:35 -0700 (PDT)
X-Received: by 2002:a67:d894:: with SMTP id f20mr15391895vsj.55.1565375315400;
        Fri, 09 Aug 2019 11:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565375315; cv=none;
        d=google.com; s=arc-20160816;
        b=xIgdAeCrxxuQQDDydKZlol0xZ8b7BxDCyBYwF+yCLkfZl1OySUul5xhF9en3ZSM29j
         F+mieP0hZ1Blfm7f5vbuhJDcsCetIVm4DvhLtOCJfxQu9Wvje9sMRWZlv7W1xXVA9Ec8
         6PbYxf6fecFJtnpTA1WGNFTsMd1vmH0AqudlUodh133yP3jApNdrstOs6FwljgEMr2Z+
         T86ni9HZzvufRPrRVVbGBcfo3iEpaHycq4oJsMQ+no5ih9J9WS8vBZ86s1qOdHnD3s0l
         zl+HKA1WtAX7EgNHEXm7BDxpdSYzC7GlPD1FihPW+02+vXWpz6iHdecsE8Ujqw0848Eq
         2nUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=meYZAOaqZ5KaoPmXpKdQX8BQbEOPXVSFqQOk/Zs8rsA=;
        b=tgkjs8PGrYtpAxyodsJDA1/z3UoDaENDsvcob8PDNdHbHZMJTrBYW0wiZUlGs+/SWy
         XfAOO2XFI5k0211dMWPwpb1VL1Gk4X0nD1s4ZStkmZUM5BTDy/ViAL5bdFuCc1BZ9DGi
         2rdFslSdLK7qN4KZgoORK/tkX5LbZZFoOYwz9O7habUZkuD///+rY1TZYmj9Chva/t7K
         FQbAdj2W0FuWaGCgeBh0hspnprCCAPRk5GSuUoQFMQerXFmQYB7Bzf6pzuNRcamRqJa8
         u/ao2J9GgN8227tyqkS4bWBsCTBsdcvh4gGYWMu8XzcFJ6MiJWCM/Gmxzo6Sx8J1yldY
         hD5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id u189si6545308vkb.2.2019.08.09.11.28.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 11:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id r4so72268244qkm.13
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 11:28:35 -0700 (PDT)
X-Received: by 2002:a37:4ac3:: with SMTP id x186mr18866428qka.138.1565375314918;
 Fri, 09 Aug 2019 11:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <87h873zs88.fsf@concordia.ellerman.id.au> <20190809182106.62130-1-ndesaulniers@google.com>
In-Reply-To: <20190809182106.62130-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 20:28:19 +0200
Message-ID: <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, christophe leroy <christophe.leroy@c-s.fr>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Aug 9, 2019 at 8:21 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:

>  static inline void dcbz(void *addr)
>  {
> -       __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
> +       __asm__ __volatile__ ("dcbz %y0" : "=Z"(*(u8 *)addr) :: "memory");
>  }
>
>  static inline void dcbi(void *addr)
>  {
> -       __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory");
> +       __asm__ __volatile__ ("dcbi %y0" : "=Z"(*(u8 *)addr) :: "memory");
>  }

I think the result of the discussion was that an output argument only kind-of
makes sense for dcbz, but for the others it's really an input, and clang is
wrong in the way it handles the "Z" constraint by making a copy, which it
doesn't do for "m".

I'm not sure whether it's correct to use "m" instead of "Z" here, which
would be a better workaround if that works. More importantly though,
clang really needs to be fixed to handle "Z" correctly.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3LynWTbpV8%3DVPm2TqgNM2MnoEyCPJd0PL2D%2BtcZqJgHg%40mail.gmail.com.
