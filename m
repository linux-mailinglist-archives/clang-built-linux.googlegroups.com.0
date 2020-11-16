Return-Path: <clang-built-linux+bncBDRZHGH43YJRB4OCZH6QKGQEFXK7KTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BC62B42BC
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 12:24:34 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 33sf11380808pgt.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 03:24:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605525873; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ps8NEKqZ/Njk+cxadWhifk4cMQk5gUPH/lU/wqmQd9HXpnUEQVQ7GiId4AQ2yOGtnJ
         bgNsuE29BKbb8fgorkNb7K6wsjowmIk1ztLXygIMluBQbTSDMOLHAWkkAXqFpl2ezRj5
         KR6ua+EhbzVW/W+V4C3juBYiEcpaR0R8ofdBssaFcqCicDhOm4XY3bPzupGKnCutl8wB
         Xglzm/bS4+iY0vm28nt/snqz240z2q/thkFuD5+9PU/UHGM/BNx5iUpDZWxMhLRTDMWz
         XPdn8BcWGgo5dvKw8iYhLR2F968X10mebpsYx9BWx3v2SMzFA7as7BOclcTcefsJ7Q1C
         f50w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cbAlh7aVrm0Ot27t2EFJwZGPI/CIqezJI6PHqF37wxE=;
        b=hGWszL+Cgq897yI8YoIh6Cs8nHY5j8hwyzsJVQ2lvp4XWuG22SQNKJmQa+/HiSWXcL
         dVDPRs6sUuiANp4B9xSiuUTQT4YKZjeyZa/q8JSb/QjBgaD+chzaXhyi69GOGeX4is4b
         C3ipMOmhG4k42WPeG33Qk6DvutHLLFYSZgZypxRhQfHWqSAIiVXn99R5P6ByXqCNVrWL
         2gLvyoyL0sVz94IkqVGothhlOzsmqs2X8SROP9hTWDH4Bwou1BZHtzK7JHzEQZLacoKg
         Ok3RREbWxYan8Gr3p1YDrwTGSceFoNUhdz9dfl2gcHI+zoudDNzbTFxzn85mRfnhGzTQ
         J+Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pzm7WGZ7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbAlh7aVrm0Ot27t2EFJwZGPI/CIqezJI6PHqF37wxE=;
        b=Um5+n3HEOY9lxU5w4LKFd5Xagr5PW+XWU+289soLLX91m2uJBC1c+M6zoQh+B86IvA
         9jw+wfL1YOrh3LCxwGXTmTprXBt1aNtlOQnjIrOoHvkG6WM+lizqW+mQYg6KlwN820g5
         0AGYbnMLesn0zQnyDwtvWMO5XIhrzIhTzIQWbmcPMssS5jz6d7mcHDTf8H4I+vRITJAQ
         k7mVzGhNA/T1TlQA4OHKyKz9/Nla70dN1yxJX7tMMniWjyfZ7T2RUFcuBxLe7dlMTbjS
         WfSu9K26Zls73oZHNdXEoF8WSAKZNTbRGJ6yzELrmZmkJD1UriVyM9fccqpOIt018B+v
         9zWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbAlh7aVrm0Ot27t2EFJwZGPI/CIqezJI6PHqF37wxE=;
        b=ROUR6t4UmjAd8XebslwJVp9gpchDQcfqTEob1WPIEbiVfCCgKR+C0EuiW7A59YNEqM
         FwOoxOhsez7BSHlcCuvB2uKUNOYzfoor4/3vKaBSMe6X0dyA6365uIi3wzuGb8d5N8LY
         5bZPTM6iOB7CzpExP7j08rg6rT+h49XiE3ucS9aUmghDhfRcLTKU6wn6tBBSAVlzgwLs
         B/dP7j9ShpUQBo4pQeXOt5pyQ8jNczov0qlGy0Au7JwbqxrtTENIK8cWKZuCKJl3Lp97
         gyBUuOJxesfPAcWBBHT4R+t48Vw4hU4zfyM0lhhQI+/bPwCRxOWYkuPi3bADHh79TyXB
         mVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbAlh7aVrm0Ot27t2EFJwZGPI/CIqezJI6PHqF37wxE=;
        b=GkxKR1G94eTvb1vYW1G6Zv16CvOoQJ94cSG2nYkEj3fA/2WwpSGaJMdVl5U2mfbzIw
         deryoprArPiQdTSb5GH0aQSNCgoxUiwqImpDKCfXBZLPVe+x1krgLt+RTUX2Dms3w3S4
         UGrkvOI4APfrcx1lU7O4067ZoJAkRdI/IpbF+Z15ryxySQ/5IIdSRi0vxLjS4robOvXg
         g11dF3DNTmuwlI4EAUWULIVEsTEVynDw6088iEpJq/sEW8lwI2A2Dv9XTotSkEF1lp6l
         Str/9eN0b3XZ0Dq2b51ASR+BVwBfxkyH9YTnfdANG9bsj5ZMAAXqfuqWRWu2Qbx+2M0g
         yBnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M6F8LrunZ9rntDGLObxRuaF7zISH+OI0PiVpkIteSTRgX03rZ
	uEE5l/tSnoqMDE3dVOn2cEQ=
X-Google-Smtp-Source: ABdhPJxVQ5vvwpKCI3KQ7cx+o+Ry167ERYhvzNglmOmqRmVXjkg6uDxmglKEhym69D4mT/S9tMpeWQ==
X-Received: by 2002:a17:90b:3004:: with SMTP id hg4mr7061115pjb.57.1605525873182;
        Mon, 16 Nov 2020 03:24:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:485d:: with SMTP id x29ls4629090pgk.3.gmail; Mon, 16 Nov
 2020 03:24:32 -0800 (PST)
X-Received: by 2002:a65:5289:: with SMTP id y9mr12842832pgp.386.1605525872528;
        Mon, 16 Nov 2020 03:24:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605525872; cv=none;
        d=google.com; s=arc-20160816;
        b=FvVvSoHMcFj8qRs0V4RcZ4BL6xTyxaAvxnXaa7GW3H19LLKYmpdbyM5c0W577rJXk6
         JUpWDPdNy2aZEHVAwA+69P0Otas16jCgVNJUy03QnZyRrD9Qcb7ztqAvo1rwgZB9Vavt
         8HWxlKWACFp5xVQb98hrqvASN2ZaYtZUeNn9gnE5QHXvaLjZEzvTHHShysWCAHl0bnnz
         86REOlg71HND+6mvizvHz5wVpJ+YGL7XU0zGrKAwAMciCzPaMtX7FetEv+AVVLIsLDgh
         Au6ZC17ZEZ3vZCQ8ASaATfHNmwFMecUNL8WgNz6aZJX8kJjt+r+nfwZaLuhfnQZR+B6W
         Pv2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zEN/VK7JhiGO6kCOiDOr14UUtqMiJCHR4xVc50CoCjc=;
        b=W/DnMYl+swj3/PH8D1LcSM7X9Q9Lf1gPoi+FGSEK9FtlSc52czQg7aUs9KNXAfaauO
         siO1yMhFNpN1L39xVAQ1gVty7eo8xMlivSC7ADcntcv2G9J5PGm9rlMDd+dgFSrOzB/2
         klqHQtBxHqFaqn73OrFOBnzMg3rciriVqLWTzINXh0v5W9KhdZ5dURGPI2ZgDGarDthX
         +TRVnTgLlXRLW8CTBpb9+i/LKGACbAU14KECWWz3ElOTPTf+pewG+8cuwqoydqrEPEOQ
         GxFVWQ2mAOvbU6fe1l7E1fXkfdAuuOP184y7DdBuNrmTUCMhEZcKp8IkRMxMveZdO3w7
         h1hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pzm7WGZ7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id s9si961783pfm.1.2020.11.16.03.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 03:24:32 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id s8so15286941yba.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 03:24:32 -0800 (PST)
X-Received: by 2002:a25:2e0d:: with SMTP id u13mr11642564ybu.247.1605525871909;
 Mon, 16 Nov 2020 03:24:31 -0800 (PST)
MIME-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com> <20201116043532.4032932-2-ndesaulniers@google.com>
In-Reply-To: <20201116043532.4032932-2-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 16 Nov 2020 12:24:21 +0100
Message-ID: <CANiq72=XRGMAYRc6yXuLYtqAcwbLx_RpqLzPdM1BhOYjX0EQiA@mail.gmail.com>
Subject: Re: [PATCH 1/3] powerpc: boot: include compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pzm7WGZ7;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Nov 16, 2020 at 5:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
> -include compiler_types.h like the main kernel does, though testing that
> produces a whole sea of warnings to cleanup. This approach is minimally
> invasive.

I would add a comment noting this as a reminder -- it also helps to
entice a cleanup.

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DXRGMAYRc6yXuLYtqAcwbLx_RpqLzPdM1BhOYjX0EQiA%40mail.gmail.com.
