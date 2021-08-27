Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJFAUSEQMGQEEWUGUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 687473F9C48
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:17:46 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id t12-20020ad45bcc000000b003772069d04asf767556qvt.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081060; cv=pass;
        d=google.com; s=arc-20160816;
        b=NuP5dHnBo/DtGmibfmWzLezNLSYHQ21x+ZLYxR8qpl9Wri57nED2uA/2YDHGq7cWHq
         2PVmnsswe2P8JR+9iZ1icg+BeKTJdETdz2oGnAGAaK0BEAw84cBvdbCWE7WaVY3BJ6yZ
         PFQ2/K6NXmp3laqPIqmBT3auUv/vGndLfDPHEAk1kE0J2zaEc3P2+NLuuHBq4pinVcDv
         9QPYGhBvdTSUjdeSmzS/YFNyW0xpbCZG8za7XO9hKHso8EZSBAjL3qs8JtNrki8d6qlX
         aaCbN1f5dvzU3+xNMhlgHBQtaWZoayqzgJSJXVrxb9nc0UISHUAvwnHQ2oPy9wnK+Ajc
         aUeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=E3bTH8jof3DHLoFB4tUDsgCgaRiPqznFaGA3n+TTdKw=;
        b=D7m5Qahti7tekrnO7YaAgPyaUzadYqhO7y+zNytaF+T/uL4AIAd3OXVWx16HbyZgQF
         BBE0lUsriu8J0BQ7+vyytZI63lBL2bi3IAJOgdn9mm5rCI55QVGZaB/JIBusPiSnEHxW
         faBGWyK/fGYgtR5b6un+VEOSMZKd6ayerNUYW/1IwdB67ixM8V1mj4+9Ut2P4+TrINhS
         JWEWly8Wpruz5dwnkK9velY35zYCqxK0lSD3Vni3g68zyQI8Axs0W33UcT8gE0/2x6iJ
         ds6tdNFsHnQcUdLfGm0EIL1qW4vW02JobHm+Xl9X7QIO09ZkK2qcFhOOOaOFCPIB3BDQ
         QFRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PTuUn80H;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E3bTH8jof3DHLoFB4tUDsgCgaRiPqznFaGA3n+TTdKw=;
        b=cGrYmbsgL1xI/4sExTVvk0IVKjnbidMAzk8bOiS/UKpzz3ExmewizCQaUJtBXUOD1a
         gjRIs+6C2u+jmZl5Oys149fLL8PCPDJdZtHAYeLn1aDoZ/9a8ao92FBCbLyltrBfUnUY
         EHHq2Qw6XdwutM6vf1xNYGH69hw9wclr3a8kSWYb2nryvzj8a/QstD9i7plKd/n2sVt+
         g578uDLXpm4zrlQlS+DG36oBdYhftX8ndvlQ+j6zVtgKWN2Jt+9VfVC+0dFHNvepXb8X
         FSsAYVGojYTExdI7uJfdDp3Fr7s8X6shjE1SnGc/DEgEHRQRyWMWDXUrSDcbiY7QxPkj
         +FNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E3bTH8jof3DHLoFB4tUDsgCgaRiPqznFaGA3n+TTdKw=;
        b=MN/+jB0+wSnVyjBi0OlmMJxf6wgWD+iQikfldj6BepmWDUCj3RN2Y2KB5oLNadc9e0
         Eyw3CZocUX2ZRP2GYGRDV1sQ4mBbChnZdusGYR+12/wRBLZr1qqEhyIuZzkQjxGJmRjB
         I01IX36l+AmU9+g7MJlGVbqGPaluYhnXyvIaZuic2/hfk3d5jP1+J3dDU7JMi9CK59vx
         6uGftAF30G3Wuruxu49HJhfwwGwd8C3gi5aKpvf/cz4R+PMLSU0Pou13lExaKZ+uNrLy
         Z5XiYSE88Kz/9skfL79VvxeI6I6Pgdoex99uk2rwrBCCmIT8awhhygF7cpTJ+7U6pXAb
         izTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Jgzc0hMJaTjqiLqSndGEpj3Bde3oANKVtHRzkbfMucjRenXsE
	+KmAP5cjdyrcfqoNXAtT2WA=
X-Google-Smtp-Source: ABdhPJx8fMe7cshCp+5nAyKwt96/UceMXt6bFL41ODFidvu49t0b3rekBCVPgJ+KoT4MmP1QZb7Q0w==
X-Received: by 2002:ac8:5215:: with SMTP id r21mr9038650qtn.175.1630081060320;
        Fri, 27 Aug 2021 09:17:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:9ac:: with SMTP id du12ls2978828qvb.5.gmail; Fri,
 27 Aug 2021 09:17:39 -0700 (PDT)
X-Received: by 2002:a0c:ac48:: with SMTP id m8mr4185558qvb.28.1630081059826;
        Fri, 27 Aug 2021 09:17:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081059; cv=none;
        d=google.com; s=arc-20160816;
        b=jG21iLtV6gb5dM6gaZvelq2PVZW8zrCKWddKMTkcNqjjbL4jpVveLbmL1F6lgq5UYC
         ibpIDVZtzlGTGq9iTislcb5s4ZrMlAnWlSPglOG+e9d+1bjOJmdZ8myrckt9Jhvy0mLL
         vfU98bVs9gk6AfL3Fahxp1OZNr/oSBHpZppf6hbTDAbcyi2UlUPBRDntjaKiZbBIv1n/
         isLudctA2TlfdiOpbh2Iyj/oVpT/WDe+ElrkVZ93mLTh2wTm+T9KtNZPyzPmvCsZyBQr
         /ZZ6JVEtwCwXHix9f3CmePDOwFjzaTudjNRGpVvPhsbx5Gl5aDPPznK7H9cV13bBEg1E
         lx5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PpE3AD8eCxkq5tJ/76g5xkddl9cPG+SrwUT4D+L1j9M=;
        b=WGpxaC4UJ+m+2FhXOmpKkNpez084VR55FbqpzLwluri38BX+NLsvOFmMc/5NMpNYrH
         lgRbOJrgu9taYw+qYUoKQNQ2+Ysyv/WOjztfyApYqaxPIHqjSg8rcNgAwZtelg67pr0P
         jQIuz2GGzx32F3gqIJK2HGHXwxBB5BTqEG2aVHDEyJAjZe+i6coycyGcrfx65Ani27XU
         YOHACzJ2pfBRRUhzQFIeQhDh412cXCfsBx+6rbnzMj1EV4+fX8v5tcFG+sx6PziPqizy
         4JEuo9RVW0Izod8BUu6WaurmRkrB8aF4hHDlzVMRmx4QiCCv2seBpKVd7JHLgxmcnST6
         mdBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PTuUn80H;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id 6si528377qkh.3.2021.08.27.09.17.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:17:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id y23so6350773pgi.7
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:17:39 -0700 (PDT)
X-Received: by 2002:a63:79c7:: with SMTP id u190mr8361038pgc.355.1630081059098;
        Fri, 27 Aug 2021 09:17:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y67sm6883595pfg.218.2021.08.27.09.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:17:38 -0700 (PDT)
Date: Fri, 27 Aug 2021 09:17:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Ayush Sawal <ayush.sawal@chelsio.com>,
	Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Kalle Valo <kvalo@codeaurora.org>, Jakub Kicinski <kuba@kernel.org>,
	Stanislaw Gruszka <stf_xl@wp.pl>,
	Luca Coelho <luciano.coelho@intel.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Johannes Berg <johannes.berg@intel.com>,
	Mordechay Goodstein <mordechay.goodstein@intel.com>,
	Lee Jones <lee.jones@linaro.org>,
	Wolfgang Grandegger <wg@grandegger.com>,
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
	linux-crypto@vger.kernel.org, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-can@vger.kernel.org,
	bpf@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
Message-ID: <202108270915.B4DD070AF@keescook>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-3-keescook@chromium.org>
 <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PTuUn80H;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 26, 2021 at 08:24:52AM +0200, Marc Kleine-Budde wrote:
> [...]
> BTW: Is there opportunity for conversion, too?
> 
> | drivers/net/can/peak_canfd/peak_pciefd_main.c:146:32: warning: array of flexible structures

Untested potential solution:

diff --git a/drivers/net/can/peak_canfd/peak_pciefd_main.c b/drivers/net/can/peak_canfd/peak_pciefd_main.c
index 1df3c4b54f03..efa2b5a52bd7 100644
--- a/drivers/net/can/peak_canfd/peak_pciefd_main.c
+++ b/drivers/net/can/peak_canfd/peak_pciefd_main.c
@@ -143,7 +143,11 @@ struct pciefd_rx_dma {
 	__le32 irq_status;
 	__le32 sys_time_low;
 	__le32 sys_time_high;
-	struct pucan_rx_msg msg[];
+	/*
+	 * with "msg" being pciefd_irq_rx_cnt(priv->irq_status)-many
+	 * variable-sized struct pucan_rx_msg following.
+	 */
+	__le32 msg[];
 } __packed __aligned(4);
 
 /* Tx Link record */
@@ -327,7 +331,7 @@ static irqreturn_t pciefd_irq_handler(int irq, void *arg)
 
 	/* handle rx messages (if any) */
 	peak_canfd_handle_msgs_list(&priv->ucan,
-				    rx_dma->msg,
+				    (struct pucan_rx_msg *)rx_dma->msg,
 				    pciefd_irq_rx_cnt(priv->irq_status));
 
 	/* handle tx link interrupt (if any) */


It's not great, but it's also not strictly a flex array, in the sense
that since struct pucan_rx_msg is a variable size, the compiler cannot
reason about the size of struct pciefd_rx_dma based only on the
irq_status encoding...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108270915.B4DD070AF%40keescook.
