Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJE5SD5QKGQESQGQBVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 025CA26EA8B
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 03:34:30 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id a16sf3605002qtj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 18:34:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600392869; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLMwiZ7oFbtHIHkHrdM2pRX7EBQxy+fNajqispWUxtC0tG6wFSAbdm+/nZPJULJEFK
         h8ZykhPDTtYwvAaF+CsYj1oMi72PXxpzuXU1Ntpr1Xirb2bnejlWx4FSx4crITZRowtR
         S4RAmdVPpQz4AfotZS1+AF63iel00kReviEE6KvsOqIN8yxCCOn4vE8FFrBfTU1sIrYG
         penYhsxQBgWXGl+EZ5+h5ANu3gFDe4jM7dJs59l/4HXRb9TCn0TESI4e94dyBo/CQoNg
         gm1s0QyW3s45llBXqbP8V33yDnsieDlUonF53t4zDzPiLx8zlxuIdUjcsDlMPnjCpTlI
         57Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=62sdY90dOzIlBJwNxL9Gch38uxY6mkMI3M6jbI1meAA=;
        b=L3A1aCQl4cdjKSqpwgojNNLZYaSA+w8IMPblyyU5pPJkP2xMxjnT6YZktlJfAqQI2p
         OhTZGmFaUukWrf70Im0F9cuKaaacMEJ16QkPtt/JXBvnxSsAJTtb2bcVCxDSElDlOu8G
         QWPkljqBMoLV7jKHjynhe+B6Yok/BRqUuioFvrdXZz6MBjp24yKKW2tPRcmLvP4HVJ/M
         3ZCyj/gm2lMuZlvPoLLU+EBzEBUMHAUOZ94Fd2LAkRmaSvhbmEO/JHhvoy46YJN5bq0r
         TxEAjQJwUWmCxadax0O2JuxluAVq9CLvWexzhkwVH0EoRsh3mc2xMBFWYqD5OEcueoER
         6OUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c8qMxsvB;
       spf=pass (google.com: domain of 3ow5kxwwkafi7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3ow5kXwwKAFI7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=62sdY90dOzIlBJwNxL9Gch38uxY6mkMI3M6jbI1meAA=;
        b=pDulR4b/u4+eWhQaMPxlXAXhYUYDJ7RdFJY6GueFf2hf8weI6qmxpvXPt7oL0JGHPe
         p82fhHrDZRfWEQbGaMbr2Go3idkqIkzOKL8XX9NNT1RTqk7jekXs9u8QxetKVnbTKsa6
         rhWYTObIQ8Xl8GMpXICygrDFPyO7ykY0iReyG5F2vXnCNb4Q/VQ9b0UdaDP1QCCS+aLB
         L2Sw0UFTCIcUNiB/m1jU8NlY/ZySALy0n0rRwz3BXSMaA05ytC6TdwFbZbAawD4VVJwH
         cI5hgl44l9jAAAq6yOGEuyfcudCgD9DSZw3PB/6yK7xtXb4Mk7mS4JXIJIDZxQn8xj10
         0FIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62sdY90dOzIlBJwNxL9Gch38uxY6mkMI3M6jbI1meAA=;
        b=c0V117k8dpmQVHCkRxjHQ1nej/97igxwPTBJA+GXug/j/rt8NgMblA/TEztAnXYiKn
         yEzgabTYSAq02AOrUMjNiBi9JWjRw4EW660il4R/0UlZ8uaYL0ib5oKHkT5i9ecBL+TO
         XZaXDyMfjwM8HQrPXj0U+vYYKXXVnWJwrz2S+hpAd5Wrqa21B0W7wU9nBMV43ok5UJk4
         yk/DhnVJLGkwXVaI9SMZi04bJYpqcaZJZUR3K3XZlyIbXM3seQ8jshEWvAy8e87+hB93
         uO7BvTsBgEUdWmuNYLvTDz1TU+o13gQs8/MUxXXYNm4kl2wcTxetwZaaH2qCbfs2pvlp
         SyIQ==
X-Gm-Message-State: AOAM533aq2rTQRY3lFM6Cxe4Ax0Fkz78UaSKMKmpTE7rjoLbWNh13MDD
	Cd95dAQpUs+4hNRWmJe2Cq4=
X-Google-Smtp-Source: ABdhPJzcjvvcXQ4ypS4waK0YdC42uPpZO6WDayrA3mCIlbhewXDJbxDXx7Or0sUk96G6XE1kuAProw==
X-Received: by 2002:ac8:1a08:: with SMTP id v8mr18751225qtj.353.1600392868845;
        Thu, 17 Sep 2020 18:34:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1445:: with SMTP id b5ls1018601qvy.2.gmail; Thu, 17
 Sep 2020 18:34:28 -0700 (PDT)
X-Received: by 2002:ad4:48c8:: with SMTP id v8mr15261804qvx.52.1600392868206;
        Thu, 17 Sep 2020 18:34:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600392868; cv=none;
        d=google.com; s=arc-20160816;
        b=dWHiK8mIXFvwJcrV1Ylk7QNgXfUhkuQh5pWJHEeSS9qznA/Uc7UNj/hMg/+c7R86yT
         5sXuElXHB+eByI20Zdl5p19Mf3donUoyZFo0RDYUdpvySUtgBSKCngxmAoHdB+BQGZm4
         DMaqWXRsE7v01TwcgDA0zLkylVZX0h5Oi3O8BM0GWwnGScZRW6T65p8WVFl5Gf2yGcZp
         3bt/xICsqFCFUa+cuLT7dHbihFQnuIXqH4drcEb/tP2ZvhYO1UvfRkDCnDmZM9Cwl17b
         2sDCNx04JVFrCknJZE3wpJf2DZ3uAQf6p7mWg8Jr9BtHedzSv3edY7jHQptK7pQpzlmp
         wNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=h4DBk/5WkNHPXPPhovT87q0/qS2kLULMROgpGrI8Sbk=;
        b=Vyo0ZGR1uRvAUYxTiezF+c1zQQqSeyV4uPi4//4refF1PCrqydTxFOCSyPdD9W/sW/
         vBGY2CWr+7gs6ihNfVbzY06JiNDTLPhsrVgDOlHk3+/eDXVqnfN5/cUs65bCxhyLSEHc
         p7mTy2Ne3wcKljL4bdjUztfuwvIZ5Ahst+5VvBC4D0Mmec8pJuEYlrZHUGRPyg1Zs1Ha
         QKxR1QShNtE2Aa/TufsqRgey2y9qkjsmMsiytR67x6h5O3jIAx2CCkJKgHxAonRiIwBS
         Ar2bedzmm0gCYc3AHV9aTWRd1rHNbNVnKwBW6aQatyXB35dH4Nr3aM/0SIbEfS9OPipU
         UY3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c8qMxsvB;
       spf=pass (google.com: domain of 3ow5kxwwkafi7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3ow5kXwwKAFI7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id h18si79100qkg.3.2020.09.17.18.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 18:34:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ow5kxwwkafi7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id y17so3235602qkf.15
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 18:34:28 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:fe8b:: with SMTP id
 d11mr15461547qvs.48.1600392867883; Thu, 17 Sep 2020 18:34:27 -0700 (PDT)
Date: Thu, 17 Sep 2020 18:34:13 -0700
In-Reply-To: <20200917024509.3253837-1-mpe@ellerman.id.au>
Message-Id: <20200918013413.910549-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200917024509.3253837-1-mpe@ellerman.id.au>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: Re: [PATCH] powerpc/process: Fix uninitialised variable error
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: mpe@ellerman.id.au
Cc: linuxppc-dev@ozlabs.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c8qMxsvB;       spf=pass
 (google.com: domain of 3ow5kxwwkafi7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3ow5kXwwKAFI7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

https://lore.kernel.org/linuxppc-dev/20200917024509.3253837-1-mpe@ellerman.id.au/

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918013413.910549-1-ndesaulniers%40google.com.
