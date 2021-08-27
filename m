Return-Path: <clang-built-linux+bncBD66FMGZA4INJWVEREDBUBGLDQ77O@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD333F9EAD
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 20:22:13 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id o3-20020a05600c510300b002e6dd64e896sf2435678wms.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 11:22:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630088533; cv=pass;
        d=google.com; s=arc-20160816;
        b=LySKk4fG41xj/8EAKJeNfXarG1B9AvCWCwmPRYSx9QXAX2OOMfZWlMzc45nzpAAOm+
         c0/Cp0E2crnFRgnunldt+rx4weUuIRnB1X+j1AErOH/a+n8Mqm0uMe0rmRqmShJCrmRb
         V7aTHG0yYGt1+4ak4f1QknzyNVbwbwS+yXC8ArYOJKj9wJiDKBmXiy5zvSXZxYLhVNs7
         y5NYOfHIVAQ5/Mm2rFdXNxgoNUGD3X0fyrfbQVT+JSxcZ6sya6dVaGULGaEAzifaN2Id
         pk4VDo1bPu8QlGRTo4Lx4OvpRcBM0SDysJv5Y1SaNKy8VjbtV28cjztb5qE0FoRw3Mb2
         xbTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uridf9YAgxfUXLDI8RbbifRzdAJWyLEXHSAM2ZNKdVQ=;
        b=u4eTC+g61FzBM1l+xi/spKuvTndMLSG4l6kLQiO9SgOAKcKa1T4wjKzDLJNu8Iv7Vl
         vRGYrCzIUBiC6HJjdr1H9UCNinq3TA3vyp0ZxCSiE+vYbXocDKucCzFNx9kRl0QVc+pw
         b0o0+rRGA6MRh0CRZrGrpvLzNrayfzLxAVGBW1EBmbRMYTW0ALhOQk4uV0Uc9dcvHocx
         PBGYXrxMXom+F+/iBSh+mLsWrWoZyFiqwfTNhIBihMfPztn/R5SLNeoDdgy8XUnlNMFL
         ehXp1ttOJ5QjR2SqkPLT+vFnjqi+Sci5dXeJNFRPiQD/y4HeJ8l7uVj4qvMl2AT1589r
         1sSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EwG0GDHE;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uridf9YAgxfUXLDI8RbbifRzdAJWyLEXHSAM2ZNKdVQ=;
        b=CgNDu5gVmLWHfPqyZ9+fncIIAEsNNcCkFBvzyrUZfniSDFRcjS6qg0yD3rRoCVxLlE
         p7JKz9R6IhkYivreXFOrEZcSPiB7pnNypdskUQ61JHS3jMUeHumFFFd9eoov6iFIEtfP
         0TtZTpjf8KuXgdHaHbjxm9H40iME1u+EEpkhhMj1DX5qi20BE6v7vggjrcrh8cfvALDJ
         iLzkkvQCuv/fB2VWb1aqd3BB5vXk4bFT0ynxEy0uEllUTGSISeg7YiVQWLeV6h2o+8Mz
         hORbeGmWnlwh+ahaJDNH//KDSuRsGk/30hIx52Lxxu6vVwx0RDtlSh8mdj618P7Eczby
         sRjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uridf9YAgxfUXLDI8RbbifRzdAJWyLEXHSAM2ZNKdVQ=;
        b=XTJ43kd7OkHF8B2ZbHfNipduXsiL/FYb2Bh5h0tvhCW5r8/A+fxvsPK8x99TEwUjOl
         L10WR3GJ9mkM+q2+GtvLTDKs1Oi+2qEG/nC1R9lX/uiSyZWuKKS7j/ykchlJ04oF6D6V
         ggsBuPkA28EJtw7zkWLJSJAXXCiRPY6EvhxQnJWDqiDHOULMs6VMSv2DhZcQpMwN77H3
         M8RLe7K4hvB0ufiyBX2dEVmAGKE8Xy1fYpW0ANArzyU1qLkF/PPwV+UCi4yJ6mTvGGat
         /SFWjVBeNkV0zFSHCyrEdYDIR0YZfWfXceW4IbdPegR/JewgEmReonaDwvtR3g7p+gKS
         RsuQ==
X-Gm-Message-State: AOAM532+3Ce8Sm46rW6WTkCyeomrEZth3vM2O7ZjosagANZT/wYGxyYE
	gXY+Lt6ajeAV7RxKA0pVdsE=
X-Google-Smtp-Source: ABdhPJzvI+QgXTu0gdvs0R5M2hc5sIBsiePqfA/7LyKvKnp6JDRmuC5ya3P2a5tNnrLMJyYdPP20ZQ==
X-Received: by 2002:a5d:51ca:: with SMTP id n10mr11738765wrv.119.1630088533026;
        Fri, 27 Aug 2021 11:22:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c2b2:: with SMTP id c18ls4825311wmk.2.gmail; Fri, 27 Aug
 2021 11:22:12 -0700 (PDT)
X-Received: by 2002:a05:600c:4309:: with SMTP id p9mr10299428wme.174.1630088532154;
        Fri, 27 Aug 2021 11:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630088532; cv=none;
        d=google.com; s=arc-20160816;
        b=hVJsH9J+3Tcn7zg5y9phY57sxb7mFrZO28viwTi/cnQHvq6BpmdGd5MOoIexxM7xhW
         4is6HckmsdAP4FHHP71iChR3A0ey6kBmUZ/VjALDTcw1sB1gi5g/XrJMKavtqn+1vwcS
         hfylZ12KpYCB7jsRsPFKMnJ2xZg3Sk6Oz0gCjHT4yjQP70eMPCAYR0ArisqNWvTYpsDy
         8hxIxXp4D/ZA94JnOPqrSXqis0FnKyHWZSXNdwlrTKFnZDyJ/8rfEzEPne89n1Vs2sCQ
         pRRvjTXxNcASLufbHCPgXoxd/X+i1qK6usPTz///Q47QtTZbn7Cm9MKf3Y4hOjlwMY3Z
         XCkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CmPCwmbRDNJ7p5NhSkUt13LhkHe6dndFUaQrcvxMLSQ=;
        b=J3K/szalUjInTTEdpbdHYAygocMAO1dQfwpfYpK08hw812YGvvyt0o2MF4IyLvIEiw
         8Gc/Sp8LQ0MC1vISLzxd31OErKNDKTrFWjb53dBbx60kQ5YJomSwH7Mxm/GGFW61d3+C
         IApEMFp1ptlRL9+IQ/mfZSJVTdK3IlIXHBOZ44nr3w00+AKaOdHdBdGjxltMjpnM4fTV
         WBCmoAfvbQOj5LeERNbvtriRbKZRNzXxNTTdwNHxUzR+zhuN/IrxsV7tMb57Gm9xCLLn
         71pQCeKqd39+UnstnTY8hhj0dqHg+Qw82pWO+Tyg2OM+C6oWweglEf8g3liB/znL6f6W
         57Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EwG0GDHE;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id o191si640831wme.0.2021.08.27.11.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 11:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id u14so15606594ejf.13
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 11:22:12 -0700 (PDT)
X-Received: by 2002:a17:906:1fd4:: with SMTP id e20mr11512481ejt.421.1630088531518;
 Fri, 27 Aug 2021 11:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <CABFpvm2o+d0e-dfmCx7H6=8i3QQS_xyGFt4i3zn8G=Myr_miag@mail.gmail.com>
In-Reply-To: <CABFpvm2o+d0e-dfmCx7H6=8i3QQS_xyGFt4i3zn8G=Myr_miag@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Aug 2021 11:22:00 -0700
Message-ID: <CAGG=3QU-USQj2cHqjSEzuc1ZkHiQe7QBER2si61dr01wBh22SQ@mail.gmail.com>
Subject: Fwd: announcing LLpatch: arch-independent live-patch creation
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Cc: Peter Oskolkov <posk@google.com>, Yonghyun Hwang <yonghyun@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EwG0GDHE;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

FYI

---------- Forwarded message ---------
From: Peter Swain <swine@pobox.com>
Date: Thu, Aug 26, 2021 at 3:34 PM
Subject: announcing LLpatch: arch-independent live-patch creation
To: <live-patching@vger.kernel.org>, <madvenka@linux.microsoft.com>


We have a new userspace live-patch creation tool, LLpatch, paralleling
kpatch-build, but without requiring its arch-specific code for ELF
analysis and manipulation.

We considered extending kpatch-build to a new target architecture
(arm64), cluttering its code with details of another architecture=E2=80=99s
quirky instruction sequences & relocation modes, and suspected there
might be a better way.


The LLVM suite already knows these details, and offers llvm-diff, for
comparing generated code at the LLVM-IR (internal representation)
level, which has access to much more of the code=E2=80=99s _intent_ than
kpatch=E2=80=99s create-diff-object is able to infer from ELF-level
differences.


Building on this, LLpatch adds namespace analysis, further
dead/duplicate code elimination, and creation of patch modules
compatible with kernel=E2=80=99s livepatch API.

Arm64 is supported - testing against a livepatch-capable v5.12 arm64
kernel, using the preliminary reliable-stacktrace work from
madvenka@linux.microsoft.com, LLpatch modules for x86 and arm64 behave
identically to the x86 kpatch-build modules, without requiring any
additional arch-specific code.

On x86, where both tools are available, LLpatch produces smaller patch
modules than kpatch, and already correctly handles most of the kpatch
test cases, without any arch-specific code. This suggests it can work
with any clang-supported kernel architecture.


Work is ongoing, collaboration is welcome.


See https://github.com/google/LLpatch for further details on the
technology and its benefits.


Yonghyun Hwang (yonghyun@google.com freeaion@gmail.com)
Bill Wendling (morbo@google.com isanbard@gmail.com)
Pete Swain (swine@google.com swine@pobox.com)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGG%3D3QU-USQj2cHqjSEzuc1ZkHiQe7QBER2si61dr01wBh22SQ%40m=
ail.gmail.com.
