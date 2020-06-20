Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTUFW33QKGQEA3P4PII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6196C202055
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:24 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id 31sf7631090plc.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623823; cv=pass;
        d=google.com; s=arc-20160816;
        b=eLugWCWQI4uO/Sa+oNZodm/qPb1Zi8zqe1bdJ6zcA4fihskORvCzHmR3Y14OqMcEpn
         bHJGKWSxI6EeJnO8nhAOrYZMj6sVJ0bB2vmMAJYBYuebkEBuwMxe2zcspSVIg98BX/t3
         SrJJ89WEdqurxCP1Qzlnahmd2btvkXpQpuGArxpxj7VL3f1pga2loHyI3sXpxybqorio
         sWMmjjiX4b0n6zmUegS5lxm+oBsCmUMToX8MXMRz36yAMUgyUxpVXeMLbUMB/tsORCFi
         SllaUcGEVj9dFofFRY3cd3jDJjX+C4anJ8lVG6M6/AOyqo5rK48VvqhBKnS3pkZBBT3K
         pVzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FPqYcds4EsIas3NLohJKwfTrcWkN/llAKaXBVXo7OEE=;
        b=0MPrktp33hrWHdaPWS+qT83MW1h9wZYGplBW5+r4+dW/33HtG7tBLf5Ei1BGscyS2S
         MH47huom4iGpHhftxbzsQLpAs2r1tYFiD9vDFN3vzjO2oQZqecfxOIvRGBe2SpnUNUYu
         IBl5ow5CHE5YFDcbclkcqItc38caqOJl+C87uoqL9+yYRj5Ah4DfQpqvXbTAbVJ1dJe9
         Tzc4Jq3P495FRNJjyFZZRKyn1lNzkHNBKouoDObxLdWeSx3RjBOQaNn03fChAdOHkwES
         ZkKVXu9xpt9tSTwEdZ95xO4GbvyIh3ymUCaCBGh1LZ5D8pvmmwv1h7n8X70X8EMGeA8e
         UcJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MqimT0fb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FPqYcds4EsIas3NLohJKwfTrcWkN/llAKaXBVXo7OEE=;
        b=svrORiqJDxeiwLAEA5t9IuCUFfihC/0FNCuGidszNE1Tuz0VbZc1hmMxkznMUWRxg8
         DXRZmN+7y+rF/5vqUSwMOMszFWSPB4K6/+If2hIdk57BlaO76E7VnOlN6q2Rrvdji1Ee
         Qm5qee96qvuh08M4IdX2M5W0rRDH+RvxYh11p/KbwWCOMNEcalgRpl7c/8UFZvxgkts9
         M+xnG+CxeqznG7tGIcPNbcz9mBRg4YvKaPW1HDVqYMciqInPUob6b4qKtnNgjeR+ZHBB
         LPRI0NxpRYSpLwGhj1Ybkx5DjSYCslwudV6V9ulvYWMZlN/GoOWO4ZdzMSmuVhGsXmH3
         c+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FPqYcds4EsIas3NLohJKwfTrcWkN/llAKaXBVXo7OEE=;
        b=JJ1viKjQ/9+8o8IkHGZMJ/2Ts38nyP9QS6PX3Pbk/yC5xdfgqXpr/k7OX1zw3JzbDU
         IxTHodcDyyMOrAw95ru8c7FMTzhwkq/I+DOyktMYFBsEJ+YyhuW7NCwXEouXlTE0JsYE
         vbfxI3/Jdb0iWvwlgEapaXk271wyXZZx+f0UcAWHCbqTnc1FmysDdQupCUCvjsDy4hLo
         SdjUwScZ+chtFmk0TaP2D+UHmQeTJO5aMIo8gZhInxjOXogL+zqaefvqG04ieCbdmQky
         n4LGhya8agyB4ATxjE+uzAZ3uu6RZicdkYPdavI5U2eITO9Za3JWzYQCWF6kvl20vzPA
         3aYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j1QjcpFN821rMZSJhCTow/iLOD/kpKznnWkeqq2MiMynSVdil
	fra/06ZaH7kiZ+ynJbyPzSM=
X-Google-Smtp-Source: ABdhPJx6ghNwHMkA8Sisd9ZumjjWR1gmfn8L2zV9VwaJmEr20tDxU2cosOBH5YQ33U/bldgsze22ag==
X-Received: by 2002:a63:2148:: with SMTP id s8mr83867pgm.37.1592623822793;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls4531578pjb.2.canary-gmail;
 Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
X-Received: by 2002:a17:90a:fb49:: with SMTP id iq9mr6741667pjb.58.1592623822417;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623822; cv=none;
        d=google.com; s=arc-20160816;
        b=jyk3i8FTrl8wRGoMU9g5Xr07gUzGlkHJlkVCiBi/wJs/UOO7Kqa3Vf4gCtF1oErbNX
         IlbRljKcmBtteiX2MfF+wMIAuBuA386GoQkBzt1snFTw+ywOvPcyhAFG4iGJl5ykUtp3
         e8bsVCpViqTEJDpZiBpfvMLFWFJBS7s4vcc/FK4vJHQjQCeZqtH0b6/rdmah9yF/fWrg
         nRVYQ+ckexQq3ghkE5l2aPEXrwRNrAXDeER9pG1pcAvL1aYUfS1hKgbZRjkybAJ/43ZK
         PYxNtMuKED73ZQNCH8lKFv9o7U12S18e1WYqdT7rFnb5BzLAOTTXmq7vcpOo3GDGSFvF
         JeYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IA+yT7PCs96a2QLkRTxqRX0+cmxfGmmmnF6nm+mE/f4=;
        b=aOfpdv/v+UtbKBJeRW+8qdnIH3u8jclHaPCuO5lyuUqQwQ1GcDEdOUygoi3Qx2Gayf
         PjREDkx6o4NkljuCLHQubfVaesWahXpehAWgVtuR+Rp2USQTKibd463ZX/d8fqWuskHf
         BKy8j2TmMCcpE41Av5tg0VPcV/aHnLbbJSNWm96Tr5cQElFoFMFAdfNaWY0CL7OvBEjn
         /4CyLhUzzbBUexeNTfeNIyxlwQiLn9y5l/1oOf3lIq2NwRTGaXSrUSWvFE+stGx6Atlv
         UXHlWgYZNs9KyHnPPW7V0kS86EEnGF/Vs4CzE4Ljd61ZPnGlo1HvIY5w8GVMnAICgKNv
         pRXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MqimT0fb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a22si668615pjv.3.2020.06.19.20.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x22so5383750pfn.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
X-Received: by 2002:a65:5645:: with SMTP id m5mr5147418pgs.434.1592623822112;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a12sm7138426pfr.44.2020.06.19.20.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 06/16] ide: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:57 -0700
Message-Id: <20200620033007.1444705-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MqimT0fb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
        unsigned long uninitialized_var(flags);
                                        ^

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/ide/ide-taskfile.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ide/ide-taskfile.c b/drivers/ide/ide-taskfile.c
index aab6a10435b6..a26f85ab58a9 100644
--- a/drivers/ide/ide-taskfile.c
+++ b/drivers/ide/ide-taskfile.c
@@ -229,7 +229,6 @@ void ide_pio_bytes(ide_drive_t *drive, struct ide_cmd *cmd,
 	ide_hwif_t *hwif = drive->hwif;
 	struct scatterlist *sg = hwif->sg_table;
 	struct scatterlist *cursg = cmd->cursg;
-	unsigned long uninitialized_var(flags);
 	struct page *page;
 	unsigned int offset;
 	u8 *buf;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-7-keescook%40chromium.org.
