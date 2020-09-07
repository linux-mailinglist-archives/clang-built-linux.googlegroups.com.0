Return-Path: <clang-built-linux+bncBCQYFH77QIORB366275AKGQEUFSMTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id BC40A25F52F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 10:29:37 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id y5sf6651145pjw.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 01:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599467376; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSdlKGrnFOj4TkmMGJL3IoF9QBKD0jtuRzqJBMdIShvA9E4QSBNW/fz41inOQiNGiY
         Bar9S68s+cIaHPE0segNraOg9o4+84RcnVoTfjeYSiCAnB/SXbzSG5kEhkd1vYxaYvRn
         b3SBz3/6SAVcM5IACICvrkZQi4oe1/M3SDI8ArqFPlZfl/JJYQnyYmAiTyUjt5jPnsX6
         Zk0PRU2BOPbcTZJ6VQKvME5J76s0/LrcpU7VHhsgGWmYkWHVLU3gp8QCCSICpeTAC3MD
         BWrgWw3ln1LofA4brc0UtXCknWeufttEqcDzQpL+nwooNtQKbIthmySZRkQ+8ViYAfFG
         8Adw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:date:message-id
         :user-agent:cc:to:references:in-reply-to:from:subject:mime-version
         :dmarc-filter:sender:dkim-signature;
        bh=8jzul7W2fP4NVUI0BmsLybeWOiw3kXaOnStAYv4Q4Sk=;
        b=JU5KKRma0twfVANvB5TFsa7p8225gHF3TgrMsDgWLvGj7I/WwX9MseOQ/ltizK8O8w
         1KMrXnFPJDZayunhqQe56sU6r2aR1VsYw7reaVY0EcCVd6gqw0qby6z0gebfQ2gx1k5m
         Xd7lXbrNPVFZWb7ElIwYFs/xkJCi5sV66kMGaqFrzdSI6wrIt1oCC/JJA8oJg8RgxKHI
         Cm+d8ibw8aY3xyWopjRatSgStuXN8J/HiDK3h6U+dFYjFVBZl6lWDTWqV0i/b3ZdCC0Q
         0Rb5UCpf3RWciyaFyoBdyPpj4BR9X2PXu4sOCZa38jTFvjxiw0yLv1HNQIj/hQczMc1w
         mvLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=FCgXJFqU;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=dAgYnauR;
       spf=pass (google.com: domain of 0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com designates 54.240.27.55 as permitted sender) smtp.mailfrom=0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:mime-version:subject:from:in-reply-to
         :references:to:cc:user-agent:message-id:date:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8jzul7W2fP4NVUI0BmsLybeWOiw3kXaOnStAYv4Q4Sk=;
        b=JGzq9hE/CwXt8RkEdgZC7eMe8dpByR6SpMFirQY8pM1RLPx+fuszmKpBmumY0z2fSD
         UwPdpFwyM81E4urJiPTE+Lg+2B02PwoowVgES3JnzD+pWwSxt+7Yid2cxj9M21n0yf6k
         AyHAlHMRjhlJFrvpahbKPZqSEKILlSm89QNE3eVmR+y3HnPoMt/M1/0IG94+m859wuI7
         Zn96Wrl2WicsoldY0bJx8VCRpkmH0i178H5TGsUkR9uZxf4gIvVT/a5RSxdgBq3FhBpg
         ryIWVt5q/G4ZyPy8yO4gFjWEw9VK6Suxf6OdrhWpr9lYmmq7QF/bY1vVlBNp95aLk7Df
         VYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8jzul7W2fP4NVUI0BmsLybeWOiw3kXaOnStAYv4Q4Sk=;
        b=mu84bQWRvZKc2zRP/8PMF2Jtq63tbHNjOjCM6wveH7UB7MBP0pQ0O8qzQ4dvmIp41I
         saro2uAmOGw9sJ1dgaW1to+980gMuWHVNUNmXr9BfJgvhCK3OSsT/zjTcqLi9MDxa6Ux
         djugHf7l4jAeX806duUQjGyh7u3mnmGPNQUC4EsRHOaWNB07Sif5KlCSUhJeNsvAhVPl
         od3i5JY/04nk3sp/kcOBCwKbOgBoXnL2mAqcXk1SyRoXcYhpRa09VNtxy0N3eaPq/MCh
         r4UKku6guZd/UfL8Y4iWK0V9KIDesCqTbSk553EAmmxfA879sF4nElN+5XwXTiN8wDsV
         cBog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532e/tnZaxJk+j6s8XPR7Pum0bX5khp+64VsvQuiZhyiEmJ+0Yau
	IOdMcUBY1MGH86Hs9ZphuM0=
X-Google-Smtp-Source: ABdhPJxFhnCjy+46tb6qNT6OBl/kH/IdTWCQpwnrsImWsB+OitpW+3Ek/3ez+Ekcn80fOAkri0jLtg==
X-Received: by 2002:a17:90a:ca82:: with SMTP id y2mr19276226pjt.233.1599467376008;
        Mon, 07 Sep 2020 01:29:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ead1:: with SMTP id p17ls653414pld.2.gmail; Mon, 07
 Sep 2020 01:29:35 -0700 (PDT)
X-Received: by 2002:a17:902:ba8f:: with SMTP id k15mr18762120pls.79.1599467375429;
        Mon, 07 Sep 2020 01:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599467375; cv=none;
        d=google.com; s=arc-20160816;
        b=DYj0XMYroLbqZApMthEieJFiqHIxv5rR2e/rpxMvMURRa01bt8AKUd6xZOLsd4TGzn
         Opx0keWLXF2VrwhV5/3OVh7yoYglf84KQh97+PK1EDwGgEwG6yfmAyDT+XcFIm0GYurm
         eJ5IDwLoCHVtIv1opAVvbi9M6HP/3dQJ1rJu5wblDF+MDbmErJuKt2te5S44eXM7cJ+j
         A6k5gurtId00IRDWpp7oiWj34Bs48v0m5j6dJI9Jo812ZXPvC3IReZr8jDkeGhE1C6GN
         D94gWY/7veOh76S3ULY/KZf64Z5urNlpQDBMNuyiF2fQ72JVh+uYJin19CR+D838xw0p
         L9vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:date:message-id:user-agent:cc:to:references:in-reply-to
         :from:subject:content-transfer-encoding:mime-version:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=SaEeqg/Fupb9vGu3wtZARuQU2c48oPmlAvKxe6Z0YWg=;
        b=ivq35Ffm3yzngsqBldB5tWRem7PPc6jw+RUx1xVDXeIFDMcWUzBSAaA2htVN2KV5+H
         9xIHQI7zot+213Aud668jkApBvwI/90O3EjCjorK22I9PSfXGt7s+Xvg2Ry8VcnYndsp
         a63Y+NA2Zcu/OauU0lQ34P6X7qRXe4qmrLeLSl3dzaoNC5f8NAgnpk7Lc/riX5egqWpP
         W13eRbGqBFyFnXLMrOcosgBUdsEBNGrFfGlHb7XY62lDJXPsjptD31C/0w3pwmvpaqKp
         eYcH42IbBfbUiu4zAb/IDhyResXqFnzDVEJ8QZR92O93QNpKEU5PPRxhQlAo0w8dpe+o
         ow/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=FCgXJFqU;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=dAgYnauR;
       spf=pass (google.com: domain of 0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com designates 54.240.27.55 as permitted sender) smtp.mailfrom=0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com
Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com. [54.240.27.55])
        by gmr-mx.google.com with ESMTPS id v62si709992pgv.0.2020.09.07.01.29.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 07 Sep 2020 01:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com designates 54.240.27.55 as permitted sender) client-ip=54.240.27.55;
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AA80DC4345B
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] mwifiex: Remove unnecessary braces from
 HostCmd_SET_SEQ_NO_BSS_INFO
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200901070834.1015754-1-natechancellor@gmail.com>
References: <20200901070834.1015754-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Amitkumar Karwar <amitkarwar@gmail.com>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, Xinming Hu <huxinming820@gmail.com>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, Andy Lavr <andy.lavr@gmail.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-ID: <0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com>
Date: Mon, 7 Sep 2020 08:29:34 +0000
X-SES-Outgoing: 2020.09.07-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt
 header.b=FCgXJFqU;       dkim=pass header.i=@amazonses.com
 header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=dAgYnauR;       spf=pass
 (google.com: domain of 0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com
 designates 54.240.27.55 as permitted sender) smtp.mailfrom=0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000@us-west-2.amazonses.com
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

Nathan Chancellor <natechancellor@gmail.com> wrote:

> A new warning in clang points out when macro expansion might result in a
> GNU C statement expression. There is an instance of this in the mwifiex
> driver:
> 
> drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
> ')' tokens terminating statement expression appear in different macro
> expansion contexts [-Wcompound-token-split-by-macro]
>         host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/marvell/mwifiex/fw.h:519:46: note: expanded from
> macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
>         (((type) & 0x000f) << 12);                  }
>                                                     ^
> 
> This does not appear to be a real issue. Removing the braces and
> replacing them with parentheses will fix the warning and not change the
> meaning of the code.
> 
> Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1146
> Reported-by: Andy Lavr <andy.lavr@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Patch applied to wireless-drivers-next.git, thanks.

6a953dc4dbd1 mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO

-- 
https://patchwork.kernel.org/patch/11747495/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0101017467af48bc-b4b17b98-b622-4e3b-b4af-a8d88152bfd8-000000%40us-west-2.amazonses.com.
