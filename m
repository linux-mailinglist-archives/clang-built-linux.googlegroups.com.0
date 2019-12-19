Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6453XQKGQEJZ5NNSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE3A1267A8
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 18:06:52 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id b194sf4496490yba.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 09:06:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576775211; cv=pass;
        d=google.com; s=arc-20160816;
        b=VRykZEk6yXD7XHvq7on4dYxH4DgnI1P6khU7leqT+K88+laDOHP2OasN9r5E217uUl
         BYhF9ywBCpINvlQyV6e54Mhb2DxEtdmZKWIajVyzxIjYcSdTQYLxrpwOBbQ0BASEeM4J
         igiQ0oZN+XmTlHAVAib9rj/qL+k+of6il+XdcLUNx9/IoKuUbyLPX+l2xJ7xMQyY1Lvr
         JSW77eliytzgob2KSHaMpdnwfDw2C/kkmeHu1jJSgY05TLOidYl4NrK9jO09wUXmK0lJ
         ezMLsOtIDnRib2FcSNOkEdnrkOzvgeGtCZfYlYNu9GSKZUy5PywSoH6Sx7N+I/z3KyzC
         h/BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eNOnwQoh3vlwbm//AiHS2Q33S7qilocsNw07fH5r62w=;
        b=DKkawO3n7OndYugLSzWvoclaXBVT/hwCD2qNmHzfLBIS8oRyj/gKm+q78taRTfgUu/
         6VlvNvb5LJ2+WyrdlbfrTCRlNc5DNJroVnA3C2q6Obbc+AD6TTYIx9s7QuTH2h1p5bU1
         MRIPcyyY9espvDwic4PgtfedtPOiiHZiOMAfNX+8Fa+nL7VMjcj59ccGbdkXSUW3mhOR
         lJLO0AGnoAJVKgXLZFcn/dQVJZUaVeDsyy3qBRFspvw6ExQYOAAYWFk8LaTQSkntA7hS
         /8tlaAwEmcwfzO2C9xzMR7V/Y1vSdRHhwMBU6gT6VgcPzsTt/s0oLNBuFsxBqoUIEl2Q
         AOFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="r/pPQutH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eNOnwQoh3vlwbm//AiHS2Q33S7qilocsNw07fH5r62w=;
        b=l4wnqHYCUi8nEH112iVO9dWRDLtV4N0nwE/PYs5N2wFRifQ45uHdzqgiQQN3iMPkUx
         vhrdCREbmHAGE0ysBMXvVD1mNM9+6jjTEGCnvV+UBBS7TdwGVukettPGdJ16tcSVpiy0
         bmNp4F++nttqQKO605BCDH1vPY0QXxe5BEQXOQhIIOKa8A35PjuAQGotQEfuEuORwbgm
         ZbCLrCMy+c6+2l9d3WWYHYRZ7DDz+ECOMKUYOoz1P1qD+l1bPTZKSeSUgSWCCbqV17sG
         JGrvkysSeC80+UIhV2y5Ma5nV+pBgeuuBONFylnI0gT0Q6Qj3ZqrEld7KokUoyhy4pSb
         S98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eNOnwQoh3vlwbm//AiHS2Q33S7qilocsNw07fH5r62w=;
        b=PYGHZQN1pLvZYIv7uAp71aZCVHiaugVujYKODCTMENV5QPrVkschMQnazq9Nm/6LNA
         +3C/J7dh65Uxugu4qzGzo/goEKHNhtwmL4aX73ZwXlV1jvpxLKqOMJvLWCIPu007Mzse
         WaEBOvGC3H2SDU6RoiPzsvVFuntxt49cjV9KVw3ZJgfwaqVA9jPXprWhdwZ+avvtY7Ap
         8BNm3ozU4jZcDrJpqTdFNWU0y1xyq42H2H9/7rlT+nZaWqdV7KS9EASdfyoAawLKBOgE
         fiHwwKeaxGaaixaa4nt3U+TSRDYe6yaAoVSuSARCdnxukM5WXp8CzoKikvltEDgZgVXl
         WnVA==
X-Gm-Message-State: APjAAAUJGBrom6bi3ygZC/5Sn7CJhOGU9oluUOnczTd16U9DSxoxZyKx
	d+4OemOexyjb158c73t+nrE=
X-Google-Smtp-Source: APXvYqyV89j0W+rX9iQtFZEyy4GbkxEdgeruZQIBw6gamkCLsepYtSD8bc1UUpcPM3a3H0QM8v6r4A==
X-Received: by 2002:a25:54e:: with SMTP id 75mr798528ybf.215.1576775211229;
        Thu, 19 Dec 2019 09:06:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b792:: with SMTP id n18ls943300ybh.15.gmail; Thu, 19 Dec
 2019 09:06:50 -0800 (PST)
X-Received: by 2002:a25:4b42:: with SMTP id y63mr7171098yba.385.1576775210812;
        Thu, 19 Dec 2019 09:06:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576775210; cv=none;
        d=google.com; s=arc-20160816;
        b=fUtLU3MvB2Bb/pto4oM864kKrfhLR6RmPqu4UKD1lyu8mS2gfHoK/ZxRi9ELlU1ETl
         0d4leCBrt7xbQS8heCp9asmwLBQkJ3iMsdqPhoGmpeM969lW+iFjuPz1JcB4HZMUxBCX
         zNQZlnLSJulsIy0gZGRWJZiZm1sRjGTliqt/LO9CQ6/CpY3Ywbj0afWCM3mHbeQ+1idO
         74p0m9AHalIXt6Pj5l96FA1Xt9Oetgr22xqKSeRrMRXQexE7tuZOWnr6W7qJl/zoe7Ch
         +Nl98X7NCpqpwV6++k+h5A446agkdUkCFqWyqAT0Az2ffywFUWDfVcD7HOVBZBdADZFG
         Atow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ggI/u1Hdyu9CCu5/c+HTrd/ZpT0m9d7Vzr8WRuTSKCk=;
        b=Zvr9NJibY9Ex9rNX5bzlZPDg0AykhsHwSR4JOuVDTjg+9u4quEZY+OihLcVn89RbRz
         m4YmOgJwbJYDvrNh0fONGEEkhS7BuGjVLjxVxaHA4pmczNOdIzIEknVn2A8VYIj9ii0Z
         +EyNqgoEuPpXmejmNcvrIRDEby9dskHjdhcdJgUzyWzMsifpmbFuFfiIjszgFu4JxQam
         m8K0QzPpLw4feP+BcQ9VBMT6iGX35V+3e8QLY4bf1lc0r/6Z9+WJfNxxbEkwZxkebBi3
         wUiNz21B+H9h0+xA5HUNU/6N9WObbG5te+Vd2HJiuSRdr689ZP9ZGH0dogfxmcipv4GV
         5DVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="r/pPQutH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s64si378358ywf.0.2019.12.19.09.06.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 09:06:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id d5so2807299pjz.5
        for <clang-built-linux@googlegroups.com>; Thu, 19 Dec 2019 09:06:50 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr9829302plt.223.1576775209535;
 Thu, 19 Dec 2019 09:06:49 -0800 (PST)
MIME-Version: 1.0
References: <20191211192252.35024-1-natechancellor@gmail.com>
 <CAKwvOdmQp+Rjgh49kbTp1ocLCjv4SUACEO4+tX5vz4stX-pPpg@mail.gmail.com> <87a77o786o.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87a77o786o.fsf@kamboji.qca.qualcomm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Dec 2019 09:06:37 -0800
Message-ID: <CAKwvOdk3EPurHLMf81VHowauRYZ4FZXxNg98hJvp8CLgu=SSPw@mail.gmail.com>
Subject: Re: [PATCH] ath11k: Remove unnecessary enum scan_priority
To: Kalle Valo <kvalo@codeaurora.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Network Development <netdev@vger.kernel.org>, 
	linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, ath11k@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="r/pPQutH";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Thu, Dec 19, 2019 at 5:32 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Nick Desaulniers <ndesaulniers@google.com> writes:
>
> > On Wed, Dec 11, 2019 at 11:23 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> >> wmi_scan_priority and scan_priority have the same values but the wmi one
> >> has WMI prefixed to the names. Since that enum is already being used,
> >> get rid of scan_priority and switch its one use to wmi_scan_priority to
> >> fix this warning.
> >>
> > Also, I don't know if the more concisely named enum is preferable?
>
> I didn't get this comment.

Given two enums with the same values:
enum scan_priority
enum wmi_scan_priority
wouldn't you prefer to type wmi_ a few times less?  Doesn't really
matter, but that was the point I was making.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3EPurHLMf81VHowauRYZ4FZXxNg98hJvp8CLgu%3DSSPw%40mail.gmail.com.
