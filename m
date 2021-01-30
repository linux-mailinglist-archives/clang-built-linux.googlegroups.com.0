Return-Path: <clang-built-linux+bncBCS7XUWOUULBBN662KAAMGQEPIGBBJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5709030911D
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:58:32 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id x71sf4895615oia.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:58:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611968311; cv=pass;
        d=google.com; s=arc-20160816;
        b=eY37jNI5G0DwEEhjpT86n9+4X+eML+WCCJj/NWNOEF7ocaRcNmBye5EG6JoPtqLj2I
         liTTnjZOlRN4+TPo499UqjhwlwC3FHpt50m1xd/NJEgE2CqxT7koMQI/Jywk/Mhsvie6
         xTWnNyvLpnYpFVQPe8q86qTQdDAoMW7EnKUSLkau8MXO92UaUrBvt8YSJdpWkq08rvvj
         e8syYR5Y2zqgXwX0NbLFAGAk1inYK/mX2DWUXnYod9eQAg18Oa8NyX8+iEqphBZqUyRD
         ES8+6LcG4+RTQtCrxr5FbyIM86xuSR5lYqKqtU2R2gHfxjzwvUcBdKd6hWl+XE45V5jk
         GSSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=avHtTtQwr0xeRNcHNDM4kP6sFkMUUGra5oSOtZi+SjU=;
        b=WNveK9APtLPkLJ99qBy93PK8jv/A2rjfl+U3OhYAb3oCyQetNyV2zPxQlKkYjRpdME
         LN9LGbNX/K7s6Os6wvx1qMRuLg2ktFKBdf1OmGJJj7pS8VQ+V8dSaFzIx4Gk8yRRwV7/
         fvjfN10gDanZPPMS3do+21/qDMzvViIY9WeXqCYX7XNohUyTWZJ0nZxGjNhH1ouKDLhQ
         CzOGVjjttvzB/T9AJMPJO0REgXfnlPLvnXP9lI7SWeYvFcZmLhCsZEX3XAewOLf1zVXX
         Cb2zzoV1E3kxscj2aE48/hT2ZQ0/4BeyNL/FDiDahZNaz0exUXyrHSXX9gGT15mYVQSr
         n6Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F9ABbjx9;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=avHtTtQwr0xeRNcHNDM4kP6sFkMUUGra5oSOtZi+SjU=;
        b=UJxry7ODjBYScqnFaJKaor6CQG3WEYc8rHYzZz6M2yeC/9NUB52fdk/ncnorhhYccS
         dxiFnlbCSXGvLVv9ISKkC5TG9daa8XlJJ6neQPoJyLr/tDHePgdQc4kdH/SD0DLbfwn+
         idQ3wTOwYZaA08vY4TpHb8qClbYGd2r/nDAdrzwJbJNqaWT9oMTMgLZdRmL/74QkrWPU
         aK83v6qZe2xcKVzUJsiMlGoGV2ByhwESVsmrrpl74GIqQn9+Wv2mqzPtJlLp8urV3PCL
         1oTq7d+6nTCft5gJ/fSV/GkluzWHta753DkEBQkHw1RLTVulcQmB3iwlPjTViEntz+fh
         LJrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=avHtTtQwr0xeRNcHNDM4kP6sFkMUUGra5oSOtZi+SjU=;
        b=FnSL2TsRLzLHAEj7rsMWUa6JFXb+axE0CCrGBQwsQYQaTCn20MHYsCbp5xMxKiGrzO
         /DWfDq8xLdxcHfSdmfaF6a5MHL8NOEQTw0O+Kb9Gn91aX0safBNfC5TCZfmdV66MOMWa
         RpmklykcH3ctq51LGH8TYqbiMA7aD1c3zSWMat3spq2Km+3wqCfKEswjaYu0CaxfGmLX
         6vEJQO3m+NZdeFac9uIKjLCEljWSq9iybxrUtqjIApX2meTgXWiPi95mKhPj9iSzJ2QX
         0jCyfG0z3kJosoRGFrkakFBSwzRC9pXzwYOv0J57mrPes622MUmqPPXFgsmhvyf5ASaf
         d/XA==
X-Gm-Message-State: AOAM530lBYBaARKhr7BSX5mxLMV+Xsesm1Dop4/WPMR4pREhOQ/+jumO
	L61ngcRCNHyfkSatnpQwau0=
X-Google-Smtp-Source: ABdhPJzK7W5P08MFy2o308FABWGDtUyF2kOxhPHeJB3eoPS7MOKtoQTOF/wDsbmhtglXScAUEMlqag==
X-Received: by 2002:a4a:970b:: with SMTP id u11mr4864827ooi.79.1611968311197;
        Fri, 29 Jan 2021 16:58:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:504c:: with SMTP id e73ls2524612oib.9.gmail; Fri, 29 Jan
 2021 16:58:30 -0800 (PST)
X-Received: by 2002:aca:31c2:: with SMTP id x185mr4163499oix.35.1611968310787;
        Fri, 29 Jan 2021 16:58:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611968310; cv=none;
        d=google.com; s=arc-20160816;
        b=gJVLpIbplFlPMUn6VNY9+2KX/i5YeCPc1h7lBQ3eVLztK7yzt5zL9/PFhkhCGs23/D
         Ptz8rESpXaB7HR+fKFpRPPrQAl6sTpHGC7qxmN2ZAU5xVB/+d/ltWhSnttxgR50CH68/
         8Ai9WM85ECCOOgfvGCmdl3NxntWffBg+bSdH7/aTriAzXi/hGGydq/tp4974gxvzLmKA
         7JUiDxNlG6ucgszwfebiUxg++TvbqjStDvRla/LIu3qrCRKYzUJG29Jz7hDbyZxTzexu
         S/7HRsxagr7ki1l0RLYI+o5a5ux7iPB7lK4VzFWgjR03JlXBZ0SJB9/Jtf8KUM0fQzc/
         h5rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vY5qfUxdXCT/eobTl+36hSbsQCTFZU3e/5axsUhR+gY=;
        b=pTd86SCEihEivG5TXQ8eIKPyEGNd47BuYvPhe7T6NB2Y2HwJuEIJGmi5MEmpqiXgBp
         JOrpRU1FUQ/qgAJXXJEtgxx9rqvg+j8toEJ+dZirVEXZrAOOQUyTtKyQGR2VgBaO4eVW
         p0hMrXdbUmNAxril32SDXBDGb0Tu/zBiaJ2bCm4zpKl2X0zgUgdgoW0ow+Obr4PCN55c
         tNXrfdGGBMiXl8m3BTNe4luFyNX2egrt7nieh206ne1xcpsHz9+nPbnw2yvTbCuGLBFG
         SWy7U7ez00ZVPvkmKgfVIFACYzTvc1O0Y+DtF1w1vHihwfNYJi8ewwuo1p/mlZZdpKK+
         6G3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F9ABbjx9;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id b124si556799oii.4.2021.01.29.16.58.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:58:30 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id o7so7797824pgl.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:58:30 -0800 (PST)
X-Received: by 2002:a65:628a:: with SMTP id f10mr6909626pgv.380.1611968309986;
 Fri, 29 Jan 2021 16:58:29 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <CA+icZUXpn_VKePTpnEhcpuSxPkuQTSKYfsVeMbxU9-rBp1ZJXw@mail.gmail.com> <CAKwvOdniSiaBkGOO32ZuGCv=1SBwaqdRsHUo31n+O+g0ek5P_Q@mail.gmail.com>
In-Reply-To: <CAKwvOdniSiaBkGOO32ZuGCv=1SBwaqdRsHUo31n+O+g0ek5P_Q@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 16:58:18 -0800
Message-ID: <CAFP8O3KcyPH-sjwoTet-W8_L5vfbiXmkWgxwyPJFY=_JFxvsTA@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F9ABbjx9;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, Jan 29, 2021 at 4:46 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jan 29, 2021 at 4:08 PM Sedat Dilek <sedat.dilek@gmail.com> wrote=
:
> >
> > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > DWARF v5 is the latest standard of the DWARF debug info format.
> > >
> > > DWARF5 wins significantly in terms of size and especially so when mix=
ed
> > > with compression (CONFIG_DEBUG_INFO_COMPRESSED).
> > >
> > > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> > >
> > > Patch 1 is a cleanup that lays the ground work and isn't DWARF
> > > v5 specific.
> > > Patch 2 implements Kconfig and Kbuild support for DWARFv5.
> > >
> >
> > When you will do a v7...
> >
> > Can you look also at places where we have hardcoded DWARF-2 handling...
>
> Ah, sorry, I just saw this now, after sending v7.  Can we wait to
> purge DWARF v2 until after we have DWARF v5?
>
> In fact, if they are orthogonal like I suspect, why don't you send
> some patches and I will help you test them?
> --
> Thanks,
> ~Nick Desaulniers

Basically the distinction is just between DWARF v2 .debug_line and
DWARF v5 .debug_line .
(-gdwarf-4 adds an extra maximum_operations_per_instruction (constant
1) compared with -gdwarf-2 but that can mostly be ignored).

Refinement among -gdwarf-[234] just clarifies things and is not going
to affect debugging experience in any case.
So I agree with Nick that it can be done separately.
Note: such clarification can make things a bit ugly because binutils
before 2020 does not recognize -gdwarf-[345].



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3KcyPH-sjwoTet-W8_L5vfbiXmkWgxwyPJFY%3D_JFxvsTA%40m=
ail.gmail.com.
