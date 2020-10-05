Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIFW5X5QKGQEETVUSYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 855BF283DA9
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 19:42:57 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id y196sf2498155vsc.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 10:42:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601919776; cv=pass;
        d=google.com; s=arc-20160816;
        b=bLfQcwDjF3Xh7P/yjeG4GzMwRcw/9l9AEhTXZfahUppPNJMvQdDR21FaZoA2DbpNkD
         5yXW5jCN6OGyTPKFnMPb1S8JiLCgGVc3Ov0pNixmwVieh+VhsPH7wqNongi7fpt1+XWY
         mCTNrkVCLx4Xer4bllZksJX7U5/SNkI9vI3gBzUDLcfjyM5dKPKNY9YaHx8vrsY4ZGYK
         UbbJqhe0kUHssHEShXMZEwN1XOxmw807mCm0F/NCfVI5FSGllgJvAp8u+7N7Nkl2+RtT
         8UNAeKFZdjQFVSH/AsTtYp58OcRV4iOXaHYGdgQ47r2COMyqTEUhb8yCnuhIcozYgoXR
         5YXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VjaNd8UvllwpGR0h+kv1M6VK3uhCzvnfvPnxAhV+KHY=;
        b=i48RSU3G4PMPbg+nkuyrmX8FXCjw18MSveIwwySLL8VBH2bE1/lZcXVDxunlJ9psg3
         FJ0eJ6y3fDNaO/LDiXNr42DGfLTtMih5qagCJHLFtgJZL4oF0UjT6g6ggEX0eeOnstBF
         zb/HWi6XCmEGNXl2gzAIrl4WukRsjajNOdk2KnZppeImfqEN2jfwPeW3IyETe9ofRxIb
         Dfh7RBnQyJFPdQ+uaVfNnP1FynXZWstvj7/0CTrSzLHtrgo4/xjSKM/Q605kHT0qbcRe
         P8coqF36oWkEE3qazO/2BtOavPIntT461F3IMEmWQOgyh21JopWY2LEGmZVrEa/HYWdN
         joAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cVTxH+Zp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VjaNd8UvllwpGR0h+kv1M6VK3uhCzvnfvPnxAhV+KHY=;
        b=NUvycqBCsDOovM8Ismq9YwtQT1pWnq6nVqv4tw9eMU7q48XCV75SwZpfxE/cr6RDQN
         uEkbUntWAOXKRD2XjfoQ4gYcr0cPHtRi+PHHaPSSsSqDkrYrbmovcmLIzJe1YDwEemzi
         FBZg0KPyYXKaZX23kYeoyslrHPnETtLff0DskIF+3fhLcydtCWqsOCt/8FZlMPCRfBK2
         wDklxI1Wk4251OqHsybTlnH9WPZLIx5jfWBMwg04GFZ6EaibtKKFGz1cq+zYz6Pew9DH
         KY93Y8v3kJNvtSK0INQMY2w3hS3mF43OzAW/vKyxZ/OB8Vn84Di2chVBim6CqYgdQn/E
         GbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VjaNd8UvllwpGR0h+kv1M6VK3uhCzvnfvPnxAhV+KHY=;
        b=lC24fgmv5l2nxZj74o4RNhshxpXHb1omqnwdk/PF4N2GEP5dmNngCiFAXSKtzdPwvs
         BrZirmPiJls3aT2ARNZAYeGd7//WI3rkBCpFHphXzsS6R/SRZLsB3kRWfd8IYXl7YyEM
         Z483XaxRTZXXLUhk4z75soJhjYVYaTE6bWyN/nli0OYwZx8APZDgF2NuaGZkZoamWJme
         gCWRYLBLn2r7nrn6M0vta1rAlZ5TxIDar6rUKBER8jt7OBvEgPE38H+KvQcJxeUW9Vo+
         lL8yLhxuexfSlNrmXHUPuG9LcJenrzQwK59euD8fQYywphoFotMg4VuwY7ZO4YhswhmX
         UbSw==
X-Gm-Message-State: AOAM531CFSv1LfU3zJ5ALAjhE5EAoy5X5HVg1D2+WTmki6/T7dI0hWGd
	vLNfSqUDlfUpOdQuLEMxnFY=
X-Google-Smtp-Source: ABdhPJxOmhfAeLG2f1i+3DmkysijGliHHfVKY+P4u6VpVd9+AlwMyo1BqiTnpO71WtWZ8YFz/5kJFA==
X-Received: by 2002:a67:cb02:: with SMTP id b2mr916291vsl.46.1601919776566;
        Mon, 05 Oct 2020 10:42:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2e6:: with SMTP id j6ls1128539vsj.1.gmail; Mon, 05
 Oct 2020 10:42:56 -0700 (PDT)
X-Received: by 2002:a67:eb48:: with SMTP id x8mr971450vso.11.1601919776048;
        Mon, 05 Oct 2020 10:42:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601919776; cv=none;
        d=google.com; s=arc-20160816;
        b=QtjLjgARaNO8nDLINiK0c58xRzbEMOBlOug6BOWTLQgQ9fwZJlu4yFhwnGD7I3wz+H
         JsgaREyEaVN0xs9wXLrQ+kHL8ZKbZE+yv1TLNWZL3uE3Ps2vxAbkRQ60xRh+dsK8iZBw
         wvLnoSMyj2NVeRPa3oDe6Gb/Sp29FVYFDoft49cCpDhnBW3JtNn4dvcm1gSv61j5D/ap
         RBbpM+dqnjWBQiPt8RS/vwUxaQIO1NAztFDuuKyKRlFIrZchHsG8jC2lH+rnfdO8asVy
         kTqk5HG5aXFVOmM9bxtJrhqO185OiH1TgcojUDnEkkWLst0hK5kCldkofkgw+qL92QRa
         8YdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TjgX5+dPEnb3sQIIDOna1g4x8nycvGPHIfS0PIIG3v0=;
        b=KIk7o1uy1jKEj1QT323g8mKHqSrC3XLoVFI5SGbu4RxqDaf7S4/v+EfNfmKg9KVZww
         8K0hnFzJExfXn38SXJZS7Z7OTdySGdmDqtiP1W4zaMwZTFEmCnIEiRqaAkxZx3QYmIW+
         Jh2zwc0WqANz121Qaf/CHEJaYbXk5qzITOBdnLAtHX9PXM6yxcIuFERVBEAiq4aHju7e
         Pl94j+ImUl7PIAyoBOa2OwFB3ob77UM+UBe062/vdkrVYBACHEAqjSuyYturxN3fHfvs
         NAuptREsv1fdU43b9tt88h2R03yLPxrBscWpwxSfvNz0RgoXxHOXnS436u3V0yzApXSL
         c5KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cVTxH+Zp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t24si49828vsn.1.2020.10.05.10.42.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:42:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k8so7431906pfk.2
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:42:55 -0700 (PDT)
X-Received: by 2002:a65:6858:: with SMTP id q24mr623420pgt.10.1601919774983;
 Mon, 05 Oct 2020 10:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <20201003185121.12370-1-trix@redhat.com>
In-Reply-To: <20201003185121.12370-1-trix@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Oct 2020 10:42:44 -0700
Message-ID: <CAKwvOdmQwumUuPEHV5D_aMVAbGuy03HmapNDH4KPj+28pi2_iA@mail.gmail.com>
Subject: Re: [PATCH] net: mvneta: fix double free of txq->buf
To: Tom Rix <trix@redhat.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cVTxH+Zp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

Hey Tom,
Thanks for sending all of these fixes and using clang's static
analyzer.  If you're interested, you should check out our
bi-weekly-meeting, linked from https://clangbuiltlinux.github.io/.
We're skipping it this week due to LLVM dev conf
https://llvm.org/devmtg/2020-09/ (stop by the Linux kernel BoF if you
happen to be attending), so we'll be meeting next on the 21st of
October.

On Sat, Oct 3, 2020 at 11:51 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> clang static analysis reports this problem:
>
> drivers/net/ethernet/marvell/mvneta.c:3465:2: warning:
>   Attempt to free released memory
>         kfree(txq->buf);
>         ^~~~~~~~~~~~~~~
>
> When mvneta_txq_sw_init() fails to alloc txq->tso_hdrs,
> it frees without poisoning txq->buf.  The error is caught
> in the mvneta_setup_txqs() caller which handles the error
> by cleaning up all of the txqs with a call to
> mvneta_txq_sw_deinit which also frees txq->buf.
>
> Since mvneta_txq_sw_deinit is a general cleaner, all of the
> partial cleaning in mvneta_txq_sw_deinit()'s error handling
> is not needed.
>
> Fixes: 2adb719d74f6 ("net: mvneta: Implement software TSO")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/net/ethernet/marvell/mvneta.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
> index d095718355d3..54b0bf574c05 100644
> --- a/drivers/net/ethernet/marvell/mvneta.c
> +++ b/drivers/net/ethernet/marvell/mvneta.c
> @@ -3397,24 +3397,15 @@ static int mvneta_txq_sw_init(struct mvneta_port *pp,
>         txq->last_desc = txq->size - 1;
>
>         txq->buf = kmalloc_array(txq->size, sizeof(*txq->buf), GFP_KERNEL);
> -       if (!txq->buf) {
> -               dma_free_coherent(pp->dev->dev.parent,
> -                                 txq->size * MVNETA_DESC_ALIGNED_SIZE,
> -                                 txq->descs, txq->descs_phys);
> +       if (!txq->buf)
>                 return -ENOMEM;
> -       }
>
>         /* Allocate DMA buffers for TSO MAC/IP/TCP headers */
>         txq->tso_hdrs = dma_alloc_coherent(pp->dev->dev.parent,
>                                            txq->size * TSO_HEADER_SIZE,
>                                            &txq->tso_hdrs_phys, GFP_KERNEL);
> -       if (!txq->tso_hdrs) {
> -               kfree(txq->buf);
> -               dma_free_coherent(pp->dev->dev.parent,
> -                                 txq->size * MVNETA_DESC_ALIGNED_SIZE,
> -                                 txq->descs, txq->descs_phys);
> +       if (!txq->tso_hdrs)
>                 return -ENOMEM;
> -       }
>
>         /* Setup XPS mapping */
>         if (txq_number > 1)
> --
> 2.18.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmQwumUuPEHV5D_aMVAbGuy03HmapNDH4KPj%2B28pi2_iA%40mail.gmail.com.
