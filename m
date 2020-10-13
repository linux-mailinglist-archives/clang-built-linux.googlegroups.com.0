Return-Path: <clang-built-linux+bncBDYNPDM2TEHBBZX5S36AKGQELUDHVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A0728D0AC
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 16:51:21 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id z8sf411370ljc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 07:51:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602600679; cv=pass;
        d=google.com; s=arc-20160816;
        b=hLVJIXHlqccsKyKAajph032G7//1ILR6/JmYl2Nf+s3FGyJPXA1uNeL9xPoYW1tKKh
         AGW1seStLjaWV2iMHu/lASgqKltdnfKGlFEJGiFIjJ2yDKAjlwY8ZZoGwkQ5FOdCbsYK
         KqMG6a/G1ki34SAnjIEw80fs/NOKMSVMGk4xhRLe9RLs4s0wHRK3ByuKCWg8wFqfy6YP
         YvnZf8oYFkgNZE4z5o/l1agVxm8kQCeTEhsYPsg5ighVN7gQV1kH+9sZE60NpYWUjUo/
         6S958PhrqrJz5FbMIxddvo0IYTtI8Nx3rV/nnh+FnnNhPMi5nsUuh3OB4nSjMwctzlPk
         Kj8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=faXzkY6dzotQ5fq6pw44faJdQCfndPhVELmymAHvzB4=;
        b=obdqCtpjNBg1OxFZ8f/5QomERR0xRoN45yRk6Wb26ZbnlL///H823qOgcyeIokPWM9
         dVV1pUvlzwIAXWgdkTr7cEAg05X6dBO1b4KAzwiNK2noUGR7pFLFnSQ/LQQkMS3/Az9O
         fg7i0iEyqE3VVSmEUtwbil7ES99R9CuDt2e0qslPlWLuDsyRGhpQagbGG4ULNJSu6pic
         K3QAr3Rgyi1P7Ow8gx3jwAhlXOelwJgRThzYzy8g8BBoDTXqeC/aD1V4/NIt8vewj2vd
         wu5is7gkZvOYfekTvr8tAgWu/io/F7jPlEStxhPkdtqFkdYLf7080POloDZdr97ETqaX
         SRxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ims2lI8k;
       spf=pass (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=martin.botka1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faXzkY6dzotQ5fq6pw44faJdQCfndPhVELmymAHvzB4=;
        b=ADWTxGM7qRvis/fPTP3BdRkHL5mg8aeMb6Wrh5jUasT8vNiDCQKmT/ybDZ7kaA3lbT
         EwUav3rBF028iJmiIo3KoawaAECMsrpvItDBC235iJ71NP+a2F5Uhas3o6K3lpiowwwB
         3w82b9qdQaPAGPEgbQdlCp8xvtH/29Tjg8UVdesfxZit2Cb0rdNVY9hWbTQ1q8SkT8TR
         MHbFds3FciSIHwgnIpPwcBHpNxDD7s2XT/pZNClgctk8Lerqpl8OF5/7c5LuX0eL6CKM
         KbRqtz8miMjzexs9VX4R/dlbVsIAED/So7Pt78r/itXt4BqhlYE0eKeEjh77aS3biKTh
         0WTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faXzkY6dzotQ5fq6pw44faJdQCfndPhVELmymAHvzB4=;
        b=ufSuu7idQBkZxy5amrDw8fzs4gFspua2zlvtUErNU70nllxY5ShJkROUHiBE8LQ61Y
         V9HsYbW7T6xjeesXtPGSX65Ypc05WiHKbPGsFsd/c740Fn9sAhi79jC4usT55Sd1gaot
         txv7WVB/gwd62akAzRoNKvFIZ2W0tTtXrCrTzIfmTxISq6sM7hu9bllq1HDm61iLMyh+
         gL0+Jp5addVeNsFgiOgrXmPs+Y/I141S5e1vxKBrZm+dR8eTdQ9TdkSRP5pDJjgruOVH
         mqwrRvuLsxsLwuzG+S9CUcCHYBKETxiB6OrGc9KZUbqk5GxjvGDvzA/6vw2fBF7wQZEj
         HsEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faXzkY6dzotQ5fq6pw44faJdQCfndPhVELmymAHvzB4=;
        b=mLVhgPuLmzZA6lYg+8GmJpHKN4Cr+LMmwUl+ok/9zm14BdshqGBym9PjpIGNoYdotg
         JAblXe5glZxvIueRfE8Q8gSZtCcEOJayNwPnYaoBGeOecRhMy5TBno68kFC1QEQInGCR
         bSCkbWSfOLaUBIA6g5fQC30zAQYENiPP/d6lN7gupOjUw7zFXAksf5CLzlnkU6l71N/2
         Mn6VgNHUWO8WcoUGvvB/Ic97QnL33flLUrlOgpFUWFgg8niQSsXW46k/Eq0Ttih/7PaS
         Vs0kiN5aLwYNMTMF1FxyELAp3ygXKUavsZxlpbZVnYKjMmuQXf8iN/SrB2o3sG7hMZxq
         vvSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532T1d1G9f5cf/GhV898DD6IWFwBkqZJ20O/tqwyU6a9roC4QMAY
	6on/bo3Ll7FdE2FKJ4J5qLs=
X-Google-Smtp-Source: ABdhPJyANErIb6Ctvma1f4z+Eo3f4OFs/zfdHPS8Nerkct88DQ6Qr2gnm+z5Cuo2zQ4hNkdVfD05QQ==
X-Received: by 2002:a2e:9147:: with SMTP id q7mr87362ljg.109.1602600678835;
        Tue, 13 Oct 2020 07:51:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls44426lji.10.gmail; Tue, 13 Oct
 2020 07:51:17 -0700 (PDT)
X-Received: by 2002:a2e:3c19:: with SMTP id j25mr3970065lja.221.1602600677653;
        Tue, 13 Oct 2020 07:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602600677; cv=none;
        d=google.com; s=arc-20160816;
        b=SAy/me2Gg6Z3mnC1wY7uhj7tIz/rSnwit3TRSg7SvkobQgwAqF3iV7IjVxxppH/c9o
         STi1MXQUJTbubzhwT1Ull+SH6ajMvEDMlo5td7yP+S0S5tFsUQt/0Kg5aNmrR7HgL8gB
         i0WXYN60Eo8avZEee6e8rbdh7wLSGosefSkh8Bhzsn3Sxdwq5aV8sh8nwBzA4SahXwKJ
         6UTUj/Y4wgGh7ymygOJK7BnG1NBUInjPNRFYwT0+sl/2BkGv6iHBqirt0duN/wRkhMp8
         Ys/MTzJ76dFmC50MZo/UzEbprdWepMgRnqMWXePx7w1+edvuNHqjcA3+cuSxv/rOYLEk
         fEEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k3dP/jpo1Owd828LcFiwJioeRx4crqT7rWT/+gIFGrQ=;
        b=LoOUULva3dP+D3t+tLsk1odE+wAv16tKnW0AWmQFTzZiFGKyvyr13YfhcJiYBjO+Wz
         YdbmtPBHvPg2lSrXOiRadwDqsrfFsFwU392kcYC1Vi+77iyieUt/SdrXwEojvfMiUpSJ
         Pazh0JPUhKstf292LRyeQhCOdq1ab3wHKfM8sub0e8QhAjhsCppVyQoREQiAKlJmGLQa
         qwX1PiaoOYUaRifCNAubo+gXg4uLmM+Y6C9nuOeGPn6g4UyRvxalHw8L1CVVrOy7WRmM
         xjm8N/UdRmaLxmiL3aoxvEhU7rzGLs1ZC4YnXFHhqGLcNgwmbUXLzauwdsdcBWjWez1i
         rGHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ims2lI8k;
       spf=pass (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=martin.botka1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id x19si1222ljh.2.2020.10.13.07.51.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 07:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id qp15so214584ejb.3
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 07:51:17 -0700 (PDT)
X-Received: by 2002:a17:906:7e47:: with SMTP id z7mr112957ejr.418.1602600677230;
 Tue, 13 Oct 2020 07:51:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200926130306.13843-2-kholk11@gmail.com> <202010010401.JGjaiuVi-lkp@intel.com>
In-Reply-To: <202010010401.JGjaiuVi-lkp@intel.com>
From: Martin Botka <martin.botka1@gmail.com>
Date: Tue, 13 Oct 2020 16:51:05 +0200
Message-ID: <CADQ2G_H7ey8tfneOjtmDx1-hyzq1RvZzLeLZPtTM=2qOezrinA@mail.gmail.com>
Subject: Re: [PATCH 1/5] clk: qcom: Add SDM660 Multimedia Clock Controller
 (MMCC) driver
To: kernel test robot <lkp@intel.com>
Cc: kholk11@gmail.com, Andy Gross <agross@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Stephen Boyd <sboyd@kernel.org>, marijns95@gmail.com, 
	Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org, 
	phone-devel@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: martin.botka1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ims2lI8k;       spf=pass
 (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=martin.botka1@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Yes, The unused parent map should be removed and resent.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADQ2G_H7ey8tfneOjtmDx1-hyzq1RvZzLeLZPtTM%3D2qOezrinA%40mail.gmail.com.
