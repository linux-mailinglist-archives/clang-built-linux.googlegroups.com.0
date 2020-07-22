Return-Path: <clang-built-linux+bncBDA7X7F2WUEBB2X64H4AKGQE4QT7MCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 06024229EE3
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 20:03:23 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id f74sf1359191wmf.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 11:03:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595441002; cv=pass;
        d=google.com; s=arc-20160816;
        b=kzsZWl9gpajAm3jdZ6pd4SFyAQAYFd5p8c92BeUMrFJjeG9WhWLuAHrhbf0ZyPt/vk
         fkqc8ldW17JI4syHf83Z/OWAtBbhfOpSAA6yJtftvhyVDVKbKdDivLwi40i7SpGBc5wM
         b6UAQOqYkfO7uwZkFfzdIFVGoVnv5mlZM5UToejAG9XHZn9wlccnvg1Ng4ebXYgGCqjl
         62PTylSwsW/Nv4b7Zc/+EvBw141BlulBdTHSrmLM5eh9FY7XZ3RefxMikK3hI9SbV6/E
         6uC0//0EWJrIEQSYdyfvdh6ozDBj3EGVw4fapKNg16qoetY2Qq/5F8BeNQ2TqU3W1k03
         fFGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=zYAdvDebMLHpsCehiwyQXhrtH09jRsKPA74V4skC0Q8=;
        b=SaUTdM8gdNyC5AbFphBOQw0gRkEst7t95pR1mgzQFpoTQb/+PA1mCy93hOAVzYO+BN
         gfXyWaXrBVefh8TiD0JPeXfn/X+1UYCcDaakX1cYJwEhzAphUnWowmkHuJfLvNsHZq+j
         fXKuweDKcozbGwgEeK3D/ehxVV1f1bXiHICBwmVp9wY80nhhIgZY+RzGFfHxDrdOMn0c
         YXhSZLtypSa8uO/AiKeoOq4H8fHZTqV61j7WcllOwi9KoRax6C4lt+IZUU8XfXffQN2O
         riH7UXwjMRtdudc8QkOe+fV7C7Nur4ci8uWPyJq4G2HqA+WwGuIxLJ8gn4PQdukGoGBk
         wrWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="qnNNzrD/";
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zYAdvDebMLHpsCehiwyQXhrtH09jRsKPA74V4skC0Q8=;
        b=BsGh2ywkfN6BURY6gHosziFrx69fmcKt+ZQyWbNvf7f3aZJ/qY6S4iORDETE8cener
         yTOBJoOUXQ4SwF6+Hy+5fM0PeeppTUvslVEvEiR6W5HWpEeOXpyfIAXb6NlpU3rclABF
         kEtWKxu+fbatY0TsfIZWksG3uqv5CotB+7eDgyBIa4k+2dH0w/a/xgMguFZNGiyhqqa5
         dCrA/TSA88wa5R/4pofRQiAqpbxAKQ2HWxYa6QJGtjKSwKo3jtIx9JHZnf9a/xeVc361
         WerL+hxgwM6hAHvr7GHLX2NolQ5rLVW5SDxrCJlpoLoV5IpCmNvaah6wJSY6ZPuGPnbu
         CKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zYAdvDebMLHpsCehiwyQXhrtH09jRsKPA74V4skC0Q8=;
        b=d5sEK6NlftQFvMcgHAQphkm2s4YwzUDbvPE+zn5H7O2g281ZTMBJf8FF+KZYwSjND9
         TDjS4CxWPoo11Qy/zIyGLbiMZGkgZS4hbOpPo5uuPAO5yzfXMC2SdPuLNYlrT7RR3pE9
         /xJUAb9dQsIq5ZWZRfhz2N/dzCbXs8f+G+okqpF4HT2pkwsqFrknr+yonf/ndYrWC3qH
         DpVouagcB6EbcuM+JIgMSyCJ59C+8oIgTXDyO4JExBETzbwPcg18v01GNYGnTEEg6TgB
         2lsX1Uoiv9TE0glxMONF2jL0C5rP7JRWxhZcaV08Tyidz/asT056H3zdGTGtWL5k/9Tx
         pL+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jL0Bj44tlsebthCs8Ct9YpmUzOALvQUEfw3H2KQ7v38iLx9Vv
	0OxfcqKIYApZarLoHbLwPl8=
X-Google-Smtp-Source: ABdhPJwn050KbHOmjM/FayeCAjBJ4YNlI8R/mmSGNEJLnxoL+NMMWFxTHGj+AM2Qy7ILOSNtjjeAAw==
X-Received: by 2002:a1c:2bc1:: with SMTP id r184mr736235wmr.133.1595441002698;
        Wed, 22 Jul 2020 11:03:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls1584085wme.3.gmail; Wed, 22
 Jul 2020 11:03:22 -0700 (PDT)
X-Received: by 2002:a1c:e382:: with SMTP id a124mr727932wmh.11.1595441002180;
        Wed, 22 Jul 2020 11:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595441002; cv=none;
        d=google.com; s=arc-20160816;
        b=TgdQF/DajrA/hjLVGcnyuHb7rUm/9tvKU8iCgHgDsFTx/iUI2Vc45KBubXFAExDmiv
         0ri9vxzwIbu2cwj3wOfzPQA8V7ng2Ybqjx1PvY0S3BuVnkxYGu749aroomIDpPYvd4PM
         pOZwBeB1STnZ4UAKXEw2SYu67dozifnfLeeBjNWv8z1PObLEgt89YpcLJbc8qO8GooIq
         xyFRgPwDaYp6+C+yU6bspBJP8N63TJM7UoBHzKwOayErzMhgdXRof8Iv9IUrZJDoyp0q
         HQ2+JmnoeXd2l4aC+Z3mMHlKFc6NWma9vTOSXSnXgGQM5d+PtQr4EUKTkOb1nm6sJJdV
         7X9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=IM91HlZQYt4WhWDGNrwnbK1Xpa0tQxJVPuLVOKm2YJo=;
        b=aa2QtwRmAFvlBvS4KbrhHFBrPkZMmu4+C5CE6tLSeAHyuBPe2lC2EfuyWOZnrpCQbr
         CBZ3s4qVZhd2uOwkhGhmKQ6qD8wc0OlytD/iWLdHQLxfshBlIR+AZGSmjZJKTQTa54cl
         xEXwuyuIlvQsh0pra8p3/lfIzlzLRH5FcYWzcmnlJHThXputJFwWPQzDSv239E1pxrJt
         cbLwrkuEsf1QEMgM5Rvt6q9suQ7n6+qvBD58DFav5YvRosAfl6ndm3XHX+LyQCwlyKJP
         CdDR7fL7fwywuMbMDNYUd1QcwI3BIx6evCLKZGvM6GjJLyE+NsIqCZ1WOEPRcH1pZaTd
         4CSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="qnNNzrD/";
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id i17si29284wrw.4.2020.07.22.11.03.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 11:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id b6so2753809wrs.11
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 11:03:22 -0700 (PDT)
X-Received: by 2002:a5d:4281:: with SMTP id k1mr676191wrq.30.1595441001945;
        Wed, 22 Jul 2020 11:03:21 -0700 (PDT)
Received: from dell ([2.27.167.94])
        by smtp.gmail.com with ESMTPSA id x1sm797856wrp.10.2020.07.22.11.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 11:03:21 -0700 (PDT)
Date: Wed, 22 Jul 2020 19:03:19 +0100
From: Lee Jones <lee.jones@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Adding branches for testing
Message-ID: <20200722180319.GH3533@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202007180528.vD5KVnHi%lkp@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="qnNNzrD/";       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::42f
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Good evening,

Is it possible to obtain build-test results for successful builds?

If so, what is the process for adding branches to your system?

Thanks in advance.

Kind regards,
Lee

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200722180319.GH3533%40dell.
