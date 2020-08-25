Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR6DST5AKGQESLTRMNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1485C251AEA
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:35:55 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id c189sf6013796oib.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 07:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598366151; cv=pass;
        d=google.com; s=arc-20160816;
        b=VS0G1unnu0xzqZX+olynM2Jl3oD/Lo0E7M5tBR1neTKoGKmjFiCAAe29M820DST1sj
         QXd7SPOPo/40JrHsliJketI364sE/nABjRhBSQ4Vq8OkXHeBcKqZaLzXeHC7Z5lbC1eW
         oZrlgS58tbAHtvfYWNKQ9TlvtIL1ESFb4XPZDacZ8EBxZZtdUFPnv9wsbAAL9/AB8lCk
         JvGONu/0ZF4bAwB6hzNfpm4Npg/ILo/xIjeTiKWMVzO7jO28Ayt838oQJVgopaPPDUDV
         V7hrNbDjSrE1vhvHnL7RIJPQcvLGxckFnaH9lM0Gyc4DY7XcGzIE4ovtfkp38YiopQIK
         35fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=3YxjxrPFXNziJnhWAkZbDE/ei4US+LKVog10PJbsugA=;
        b=Nj5Z6j59RwUI+JHjXtAi0LpWX3badCVcHDjZrJepEZC5q1NDI87xRhC6mjtII7L8U1
         W0oafgIFADEI2ks9vyUIwW7gnSrq9MbESDakfHiPmGRuOgOP36C6bBBdM943i/zaZa/G
         NSxn/IM43lbz4sqGTpPsOAPUYPHbovucxJkMlgkE45LvVH5LttuAVtbhOY0+x5YG8jYQ
         d8vQp3lkWxHyLw/l8yWwm5tjiwSlklwQoOggwy9yZPJ92G/uAf7BoTHAiVfexBP4akxD
         h22RpunFK1g1/L76QFt5OGISbiyg1o0EFTVwg9Eec6NAkdtTX1j6IWtnLvuCXXsUOmb5
         8Hjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UxJfVoSQ;
       spf=pass (google.com: domain of 3xiffxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xiFFXwwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3YxjxrPFXNziJnhWAkZbDE/ei4US+LKVog10PJbsugA=;
        b=XxomTrFiu8BqtenPjUOnICAprsMSDJOC1do/93tWszgZKrJnYvU/h2kCCN7dhmjpNf
         TDXEWAF9IfeUaP8NoSPHiZp1O1acriw48XAUfqmJiU1niNgzIWcBLJfyNTUU4A2iMWR9
         VqXXiEuhw1icAtq3lTJoHUX5Lor/XzgtiJDayYddKTJt17MEtItVugPqBqB+btCo1Stx
         R9pXpmfeDgxWAsfxE7ZI5AVzIeuuKMClhxPU29hPr7eDgyaBs/cDU4OnpqYGJEjZofGf
         k0AyvJwuUtmup03bZyQF8OckSz4JITS4m67UNaX17oD2IoQKW53NrMn0wIKEI8Cvslwv
         yJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3YxjxrPFXNziJnhWAkZbDE/ei4US+LKVog10PJbsugA=;
        b=tYgv0W5ryYrL7y8Vd6+Yu7iveKzrig3sW82k59buzWDZoM2cl8kKJekJy5vamiRAoN
         a/rIbQT/Vdm1iekrHZah+SQlC6vb40npGeRULo/jRBEkstOkDG8nOFUcAYSS4pmYN7KZ
         Unw2Z0AQA408I6wDgo4WLhY4ItBidGTCScZYQuYPxPsq8fwjf8zZ1lvdGVk1/rBXpGAN
         v5j+Vx9R1UzkLNLHCYNkVyy77/g+C8qA+0zuMY38sT8kDxgbSODnH3SRXDPXSYHrhOgL
         uhEed7VWvOVsBWq1kjyB85++uePc/rfyJKoxOS/dcJ/LDxWlhCC6N0H5pUleFZ5S8sEf
         4LDA==
X-Gm-Message-State: AOAM533fTRxj0QjFKagvEXauSht+Cl2JHZeLtII0WxCRFhtAqN8CNTCW
	Kx139n1CKxnkWJziYxOcB2Y=
X-Google-Smtp-Source: ABdhPJzKrrpH5XJUKaOm3gM8p9p6SoTw+JuO9hcacqcCGc1m7sU+fwi4pYN0U5qRYD2X93kALY1G5g==
X-Received: by 2002:a05:6830:15d0:: with SMTP id j16mr4785146otr.242.1598366151639;
        Tue, 25 Aug 2020 07:35:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4404:: with SMTP id k4ls2904759oiw.8.gmail; Tue, 25 Aug
 2020 07:35:51 -0700 (PDT)
X-Received: by 2002:a54:4f1e:: with SMTP id e30mr1226415oiy.176.1598366151312;
        Tue, 25 Aug 2020 07:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598366151; cv=none;
        d=google.com; s=arc-20160816;
        b=LkfoYVVCq9ca5Jnx4uO2p5W0w1pBj+TAmoyOLVhBBF6hsezqUPqp2n4dCa/Vk2Z2IB
         yfj9uhdN0CgQsY/v3tEsOTbeFE00Mpl/1X/y7ptIr82+A/UXqWX348lKRoUV0rnBFXqW
         +gYpZHz4zNP/7OgJHwahO95o7D8OF6BAwhx5ztsFK7eWRgzgoA3fphpMg/N5+hkS/r2Z
         juP6946iWCErIBhswrcccYYGXblQrkvI9Sg9r+kV/F88fnHVsk1BYFZH/CGMAdG9Olcf
         AOP654UpmSX1+ZuYN8BXLYL9v+nRw72vrMXBy4cTOxgmrQzy5pSsa8GhELj7JSE+hFud
         Xe4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=k54hAuV/R48nxWYsw6Z5KxJrA9oI9B0nXG5/JiFy5us=;
        b=DXf1H5SOe3EiN5UVl19PPgTrjXKjdLByhJBfkZ1NID+aQd2qBiaWaeBPA/NEIajwnv
         DPyIibnDlx2avh87lga8lddg382JkzK7dTK2LXlbkFep53J0bWIagJeURVGaYx3vxcjv
         5Knzaanw9VRRgOQ63Xw+MdSFrHysj50G9b9N3Z7B8W14bffpAd8RcN75nyVxcsPdXgCW
         WXzTLLeC9dJmfSwF7yiU+dO4x6H4zDyJvzs2a5GPSdZ2dPs/Nhj8Bklh5zYfDXjI+pG8
         SPxB9Vcge9s6N8bX6NkE/Y3dTS3Dw6PZTy1OxBJGMurfKGH0jhPI5kGEC218vFo5jf0j
         ajQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UxJfVoSQ;
       spf=pass (google.com: domain of 3xiffxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xiFFXwwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e199si129324oob.0.2020.08.25.07.35.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 07:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xiffxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d26so15238911yba.20
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 07:35:51 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:38c5:: with SMTP id
 f188mr14594662yba.132.1598366150820; Tue, 25 Aug 2020 07:35:50 -0700 (PDT)
Date: Tue, 25 Aug 2020 07:35:40 -0700
Message-Id: <20200825143540.2948637-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH] MAINTAINERS: add LLVM maintainers
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UxJfVoSQ;       spf=pass
 (google.com: domain of 3xiffxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xiFFXwwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

Nominate Nathan and myself to be point of contact for clang/LLVM related
support, after a poll at the LLVM BoF at Linux Plumbers Conf 2020.

While corporate sponsorship is beneficial, its important to not entrust
the keys to the nukes with any one entity. Should Nathan and I find
ourselves at the same employer, I would gladly step down.

Cc: clang-built-linux@googlegroups.com
Cc: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 33aab0c88118..0cbb24753153 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4249,6 +4249,8 @@ S:	Maintained
 F:	.clang-format
 
 CLANG/LLVM BUILD SUPPORT
+M:	Nathan Chancellor <natechancellor@gmail.com>
+M:	Nick Desaulniers <ndesaulniers@google.com>
 L:	clang-built-linux@googlegroups.com
 S:	Supported
 W:	https://clangbuiltlinux.github.io/
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825143540.2948637-1-ndesaulniers%40google.com.
