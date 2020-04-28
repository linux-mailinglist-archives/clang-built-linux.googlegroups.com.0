Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5WGT32QKGQE4WUAQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5261BB4B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 05:31:04 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id t130sf22739975iod.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 20:31:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588044663; cv=pass;
        d=google.com; s=arc-20160816;
        b=gnUkLscjQZB4z26GfEM+sVCKY5/B3huz3ajtrdDS58fRpvS62NacYNEUJrHIM8KcZ6
         tJLBJPgNeo7UZpaR+HbHqdfdqj1acaLSR/5rhcewlbcd0TJDQlXMBMXhdUK+0SkN5laR
         kaFsrvuMv9vdFDb6XHtc1pc+WM1avpUsG7fR6MTr2tlUQTW56RZdlYTubyTe0yeX5E2W
         W70i/UGnG3HLwl8U7yN40z/aj1p3hlZ8UiSIhCp+j0ZQaV6z63+lhCBLDGiIZUmI3WyM
         TgdaM7T492OxoseHeD7PFUy/2rFIlLnkFyQmxU/z3OyUAWsie+ELNAoV6eXClWhxMKVn
         RYCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=WG3l5J7DkO//S78q+tqI4DJUgp6GKb648HeaKiAns5s=;
        b=Iw1dJDf0u6JihrXiuKnzrK/C59Qa77Im7+w1n9PItt1qDEfyAN7PnAs3IXMTmVdqMV
         pm2KsB8SeXkupyfoxr8iYwBZxySl8MzvVqIHfNjUaFOPA0rKMewAOKtfz1YDHBIB2945
         jCtzk5x85qL07LfpT9yQl8ij6cYF3dMKT6js7O/1jPKl4HrLUjLvS5Ta8nhYKMJDbaBW
         sJfjMRGhTbnrG0zdBuKMV8Q6DbzLNJEtreVOcHafn47ECM+No+BVrgPNb7dGsubJWDob
         9QSl3Fte/ytu/yuUID4dwXrpprzv9vXAmfnCagI0oVD8XHRa0hwUNd1jqT/ek4eq/bGk
         5G2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tIUU17d6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WG3l5J7DkO//S78q+tqI4DJUgp6GKb648HeaKiAns5s=;
        b=oa9myDUKhmZZ5Ox0HLOUyyzdcupqaund2Rof4LgkHz0t56drSqBxjP2vx2NcpnclsT
         Nv6yd3ighrKSzZsfZ/SBOLS3YD+yL+KyduoD5qXATe3vRpXD1+Bhe0ea0VJ6oRMZ5opC
         smjU0fn7XvUmQJPVsvvkmSbuarugmxkLh07yDnMYJlp1Qed31uL62SqNo9yPN0kVyH3j
         oYMCrvt11X3213nCIQGQqhgtpV7Ld14JE5wVw7EAR3AjI6kRtuwz+c4FVuG3oJqwKenA
         ln2nP29RlO+oNHTs/MLrta+XZTxA5KXwvRIf1AY/JSk2gJkjuPfsIuX4fx//AzbGSBWc
         om7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WG3l5J7DkO//S78q+tqI4DJUgp6GKb648HeaKiAns5s=;
        b=FwGFPB8nb/43y9+47BG2bt2agpovw8dkQwLH6e4TQ0ImQAeunFxL+kW0TzvMj0IsG5
         e+r71M/2kPm0J2ELnUaXcsrlv19GteX4vG8Ify0oY4KbTjHTU2qIvDzKBZ7Tz954hvuP
         e83q2tjVDU0xxxHiJLKNCfCB+/RgFHToGd5iZtV/NlFepGI8EPEO78MRrMO22FZwq/eW
         wmt9BpRkvSz/6ZYliuw365JFN+WZXLK+iBVKq31DREljG97tvC7FxB7v4W6hEwhZSeMs
         7mP8JF7kB7dAyEKLzft6B3xPatG4kpXzyNmMUp0eZG2PTCVM2OnvyAbFCQZatbgpHmkc
         jRgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WG3l5J7DkO//S78q+tqI4DJUgp6GKb648HeaKiAns5s=;
        b=Lh5ZOWW1+Za+SgEG01uGgFrIZ2F8S8iOLEhVS7YEkKhTBdn3GsElbkcEIq9JO97o0y
         Jvm1kdu90ogSg/+BOUaJmtlKS71Q+KQjEjM1kp8pu+UEN6ylBQ0AgvjAoDYM7EZbpYSG
         HfC/Ic5VqLToW44ofeskMsboNOShcWaWYyW2ESzzIOYckxCFUw4xGRwcnp3pvKzubmtt
         qaCc8Qc9HX4uRVDdlsUG/1zUAueOHRqcBcE35nzFkzgfnHj1uVvnKDTG2Y6wTQErJeRH
         7qcMjlHrhqD9O/o3uAIFa/v49DVpL0y8jhpaJHDrDNPc0EBZ3VTMTqIKc9VUvAPOjgB5
         caWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubE1N5FO3V4VS7+WPhBh1/1dDNkpuZybsqqpc6NUZU4KD6HRdSv
	Wvc99plQc/TkEz7V8bpFPN8=
X-Google-Smtp-Source: APiQypIGaD1lMbKRcQ/yYR2wbLXr//qCowHX7RuyYWbGQCqbdrM7Hva8e053DAmOw9WMgQg4p5acFg==
X-Received: by 2002:a5d:970e:: with SMTP id h14mr763268iol.117.1588044662990;
        Mon, 27 Apr 2020 20:31:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d516:: with SMTP id e22ls1973609iom.3.gmail; Mon, 27 Apr
 2020 20:31:02 -0700 (PDT)
X-Received: by 2002:a05:6602:15c4:: with SMTP id f4mr25071991iow.108.1588044662689;
        Mon, 27 Apr 2020 20:31:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588044662; cv=none;
        d=google.com; s=arc-20160816;
        b=h14Hr+OUrhYRmVKtqp8mgyQMiDGEznRDcf0E9s6x0rn51l1keV1rhNfDAdVFvfw324
         lVZWsLN+aEJFCc0vGIIcwILV6P844OVakKaS4V/90mHGZ5caXmnVhihrnlHF26Zhm99Z
         6VsjRs9CehhLYMLZNtL0yfhuy0wrSrOQRfyZ8fK4r/jzCA0KDQDzSV9txlBgW3m5+QxW
         LaIdzsJ2gepz5++vyCNnzZupYvEkU9eVhca4/bP7MT0KbQL/3YsUi56ZfzUCGzVVEhxr
         G1G16KIUUADNiCR80pvVJfhMuXrfoT7JjfXaGkYuZa1SjpM9qlk0TCITv8zh8te0UfyS
         /nGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jm8vfJ9EYyWFOVTVK1su6QOP18i2GwWwk6iXxu1Gwqg=;
        b=fMEy9v5ebzYAIwkv9MKonvueio3MYVzFFUmCs1A3ghUoR0ux7eY6JExhbbJotmdvy6
         Y+BHRquazCcI4+wq/MkWROhbMjPn9Nbj6SWzvqBX4s3/7lBQsdsATu9rKRW4+IbgdoZY
         Jy4m9OICCyJd8vQP0t1MusKtIMbmanYcdl4/OM1rN2CwxQmTjGEtkLuJQW2/czMglY2l
         7sI/isYZmCV/PrV0gVsGx736xqzAXC5m1uVakEXao0gqauSLWsmpClkwB4Uj+ZsSz0vY
         GFoHRDygT5TE78wkUEA3iwZMR4Gvciwil+nElXYYoTbCPeYa//uRGNLbsyQkHSkFCYKa
         7UAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tIUU17d6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o6si193662ilo.4.2020.04.27.20.31.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 20:31:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id c3so30230773otp.8
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 20:31:02 -0700 (PDT)
X-Received: by 2002:a05:6830:11c6:: with SMTP id v6mr20618099otq.166.1588044662222;
        Mon, 27 Apr 2020 20:31:02 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q8sm1959615oij.36.2020.04.27.20.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2020 20:31:01 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>
Cc: linux-hyperv@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] hv_netvsc: Fix netvsc_start_xmit's return type
Date: Mon, 27 Apr 2020 20:30:43 -0700
Message-Id: <20200428033042.44561-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tIUU17d6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

netvsc_start_xmit is used as a callback function for the ndo_start_xmit
function pointer. ndo_start_xmit's return type is netdev_tx_t but
netvsc_start_xmit's return type is int.

This causes a failure with Control Flow Integrity (CFI), which requires
function pointer prototypes and callback function definitions to match
exactly. When CFI is in enforcing, the kernel panics. When booting a
CFI kernel with WSL 2, the VM is immediately terminated because of this:

$ wsl.exe -d ubuntu
The Windows Subsystem for Linux instance has terminated.

Avoid this by using the right return type for netvsc_start_xmit.

Fixes: fceaf24a943d8 ("Staging: hv: add the Hyper-V virtual network driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1009
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Do note that netvsc_xmit still returns int because netvsc_xmit has a
potential return from netvsc_vf_xmit, which does not return netdev_tx_t
because of the call to dev_queue_xmit.

I am not sure if that is an oversight that was introduced by
commit 0c195567a8f6e ("netvsc: transparent VF management") or if
everything works properly as it is now.

My patch is purely concerned with making the definition match the
prototype so it should be NFC aside from avoiding the CFI panic.

 drivers/net/hyperv/netvsc_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index d8e86bdbfba1e..ebcfbae056900 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -707,7 +707,8 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
 	goto drop;
 }
 
-static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *ndev)
+static netdev_tx_t netvsc_start_xmit(struct sk_buff *skb,
+				     struct net_device *ndev)
 {
 	return netvsc_xmit(skb, ndev, false);
 }

base-commit: 51184ae37e0518fd90cb437a2fbc953ae558cd0d
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428033042.44561-1-natechancellor%40gmail.com.
