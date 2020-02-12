Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXNKSHZAKGQERUUJSTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EA115B142
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 20:43:26 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id t10sf1765943otc.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 11:43:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581536605; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFTSGyZtbyQE3Npf5v53bmiM+hcudKPZ3c4RBrcgzn2Gji/RFTxRtWm7Z3t1HDpcXV
         IW9yOWGNZjqmop4yuwai/3D5Py50kx2p/EAZgUA72U4JGi5sKrbC7hoibVgnjOEDWC7V
         6Rp3zwjC585Ik6iKkKPX5Hd2mtUmJYp3cxLQ303y2ESmFKWgfkRT3n4j+gDH1uPz+DKM
         hU7AkcPADwpZFX3MTaSdM1f83RpgAlMitA4xgiTjZtcT6sq/X88+euoxsRAYk1tmyuLf
         CoMMAA4BEKTCF0WFQ28tEfRxS0uvt5XWfcStrJTywR4ZJ83I41pilkGFF/IOWkvdOR2A
         qGow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=GrKiiI9DgwzeaN1PhChOiD5ULOafZN/5huYDXefJYAA=;
        b=Nrw9v4K5E2Oez/9PbDGBLkAWCtALg8ArCa6uydjPpu6YoL16DtiJ4Ob6hjwZx/+Y+4
         Mfwh/iv6quTwvwb09S7ccfce31Pl3S8MHa87PekdhbLLuf4v/FCHxcBl2+mi5Qjnl+YZ
         em1uYodaMYg+GADS+pSnZ4vZnFvy8xSuGYwN0naO55cnELl1btQK/Ig2yHRH3ujbvnGi
         1SceI99JG5Q4sKamAkCBeUJSF94ik/DBXSDOkYx7g5HK5ecqBiqsekFKhTbfTbnL0TnG
         PWKRjVg4PJpjFLrOLrEcCJdC7AnqrsK96boud6MYRfRdkuzgB/332m7UnMY60wyDHeII
         8f3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQrrnQJy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GrKiiI9DgwzeaN1PhChOiD5ULOafZN/5huYDXefJYAA=;
        b=lN+l3bF3hMzwBVTuX7a2JCW83ZKQuy3lPLm1XvJexRLQZwNiSSVFRSaA/hMJx5J+pC
         SspEwZbzt83a/RDaEQIZTX5WdG935C85TRhVif2j6J8gMrUpZxKXHyRHqJAJDu6K/q7W
         XKBiFozXo62PRG6fsu6mgvg39MXp0cZP+P0a1ROnuBukc5af31Bw4XNtz+Kvm6v2UhNQ
         ebxCMuMWTMXVaZOlYplVRbnnWdlBngUNJfbRbeNmoZSC34y4xstt2q3WreRZRCs4MpJh
         Ljwzpw+gi2ynnvqy8EnF4EjSPhEUh9xzZEvdiy6Cyg8swyjF5PUF+spOfzaQrFJr03Io
         M+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GrKiiI9DgwzeaN1PhChOiD5ULOafZN/5huYDXefJYAA=;
        b=lWEWXnf211Y4O+l77gpnOG90QVXn5CW4T/+PxVNPeyIBMJYsvTPH7EjVolx+URsWc7
         LWXlvtJrN0mvX4qq/RqTtUQckgwaxJvJ1M0B77sCPT2/fGMP8ayRATMmGULzUC8SLYDA
         ji3CoL5+GoRU2/Dgszb3nnPHP4H7cxqvPf/+pp9qK3o6rWp8ZZsAgO/Z8tKIMdbODAtG
         FP2IS7kw6aiTwN57v7umvVujV9S2hWyED2uhu0lf3EXoKyolzLVESdrCua/WpUbqhsTF
         z39Xq7ufflLDtYpyte3hDDRvXnoCgnuyziz1Vl3l2c0WHbN0ZUDEWKmYcNuXXUyIYxKf
         i/Eg==
X-Gm-Message-State: APjAAAVnTiXojlBxN7bN+GgCsxwokw6PgYLriQb5FNx068kiMlgX+Thz
	EScwtitvyr4WQV5tc8ZQaQI=
X-Google-Smtp-Source: APXvYqwRgm9fRZg8LGw4El1+/fqEjcJoA0EGuT0Wz/XCSHmOccHjwbkjQbLjVtMt75kAeVoHXK0ZjA==
X-Received: by 2002:a9d:f26:: with SMTP id 35mr10051282ott.31.1581536605312;
        Wed, 12 Feb 2020 11:43:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf95:: with SMTP id f143ls6879348oig.7.gmail; Wed, 12
 Feb 2020 11:43:25 -0800 (PST)
X-Received: by 2002:aca:f584:: with SMTP id t126mr494707oih.132.1581536604888;
        Wed, 12 Feb 2020 11:43:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581536604; cv=none;
        d=google.com; s=arc-20160816;
        b=buKyeEsnPWRzwgN+SIMVJTs3s9d8GnlFIQMaVpsLDUcQkgtzRi8Np6+7kGb9anwSBx
         tw2Sw+ePIqP1HZxOGPg+Y2r6FAU3pJVS2R437ucsDxrEK7xddzoJ9a4gCehGioSge6Q6
         fS+n//thrZRs6WQz2g7UWvHxf0wSVWnxU1I3/xfwc0qmIFmE46F9g6ngc6OCCPT43o2/
         uQOIiXx0Jl59syUeu0l2Wcko/1fLpHkVeUvQjzUXoAx9NdLExQ/n9ELheWmud+EUGbRE
         UH5NYgTWEdnU+zEx7QiEuiiUCNa9nEDU093SsuJSCt9vOej76fEc0eGiyPyA8fXSez0i
         j+aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=2EGsHXunwaL027aVDCWQig3Ix5HmdZag1SUD0fe7xrQ=;
        b=VjCi1s148kuKAXAMxqNM3OA753dVI7nifR2hT8IHnNq7V25wWLmwe7LKmxdllYEIdG
         MHSfkuexPASzqIh/zRt5aG4+VSEpEJxu9JZ4ZF8zrP6lfuSQSP9ExYe4d4uR0A5Cgs+V
         uve+95SeC04WXJuhTr2vKo810yY96uhdUQuImzWaqAjjy5kMh5SyHxLvq4cKsuSO6Wez
         IjxlMomMDMI9NPCC1xp3jfKSNhU6Mq8slGm9EcFvAcPa+/A60HnibAMWjnkFxPVXIbFI
         Q0cfoH7ZCNgyW41wvdXJprqu7aW+QDpBlCpIIyjtP5uvyMMCGswu5krVEVe+0yiWN3gW
         C2vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQrrnQJy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id o11si76172otk.0.2020.02.12.11.43.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 11:43:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g6so1349530plt.2
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 11:43:24 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr755012pjk.134.1581536603784;
 Wed, 12 Feb 2020 11:43:23 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 11:43:12 -0800
Message-ID: <CAKwvOdnwo3pESU2t=yWMSD8W658KPGFURoQ0z-UQuYeifBp=4g@mail.gmail.com>
Subject: LKML: Linus Torvalds: Re: clang asm-goto support (Was Re: [PATCH v2]
 x86/retpoline: Add clang support)
To: Bill Wendling <morbo@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000007823b0059e662fe9"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VQrrnQJy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--0000000000007823b0059e662fe9
Content-Type: text/plain; charset="UTF-8"

https://lkml.org/lkml/2018/2/14/657

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwo3pESU2t%3DyWMSD8W658KPGFURoQ0z-UQuYeifBp%3D4g%40mail.gmail.com.

--0000000000007823b0059e662fe9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://lkml.org/lkml/2018/2/14/657">https://l=
kml.org/lkml/2018/2/14/657</a>=C2=A0</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdnwo3pESU2t%3DyWMSD8W658KPGFURoQ0z-UQuYe=
ifBp%3D4g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwo3pESU2t%3DyWMSD8W658K=
PGFURoQ0z-UQuYeifBp%3D4g%40mail.gmail.com</a>.<br />

--0000000000007823b0059e662fe9--
