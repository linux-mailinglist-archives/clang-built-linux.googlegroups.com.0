Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG4RZ76QKGQEHTWTGLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 404802B5F71
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 13:57:00 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id p199sf7331601vkp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:57:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605617819; cv=pass;
        d=google.com; s=arc-20160816;
        b=SHQgi8srzlwR9BoLVMTT5REu3br0XRRdLNu4F+KtHpXIWPamZmwO8PZDsxDzi9flzg
         RR0f3+D/ts/LRFzuK0o0/W6r8ZDdwOXDmHxai5fU5h8k4j/4H3is/m4nfiHdJod6a1QN
         EcdilzXp/XPsM2xbZ6+6QrDSnKjV+JTnCGmT9eH4LpTKrf2ytPWIPfxxN5cMN9ujzuTT
         /mlb7Ag0MNpIL4p/OedmD9fO30CC1ccpUKIyeRh2oKEMgvIeShWcrEvNENtqFZ8lMumb
         D6tf9bibtfhi9dFs2255abDcZ+rmZgYQXd01IXPDZC6uRpEEa4dIHy2fpA6khq1thPgI
         8SYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XcZmozevRVxlb6iyzQ6vH3yiHrUFzOiqSyfDxqWuApk=;
        b=Jydh5dft+P4dqjI1IUFTC9qYdPm0Tb5P+ss2Xpu+ItZV4LwXycQC4vKzbfszDVabMJ
         qcJdDEcBFyDO+sPWL7NFe97uAzZAeYLq2bzAfU9V1iGXw1ym78RuYrCzYVjMQEGNCOsx
         3A71Iw9wxp4KSUpQtEzY7R1LBYSEWVsC+lF/WpogaaiPTTC/Oj2iutUa2AFnvt/t1C+F
         dY+vQF0LJJeV2SSkpFkQtIEAULfTJBIRaktiim8T65YfqR1eJIaJ4XuojJldn0K4KNC4
         +Wi0+gporAiBTYOElg93rNTCkXCY5w1dKXUos4wCQIYlCHlBI9U7+Wy8tfiiqHzHiAMn
         n3rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BG9dmclk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcZmozevRVxlb6iyzQ6vH3yiHrUFzOiqSyfDxqWuApk=;
        b=Q8rnjYFfBZIyxAH3VRO9Ugaq0hzFutCVEJWtfRt0Frnpa/BG82Ko2LqCef7hJDTQE8
         +CoALFOC4aBE9SaqVQ90f7n/5whsPeM2AblKT/vdCVXeovshU2n/qzhB+QCOVnudUQDv
         pHcNcRQL664V74UghmAmCc9Ih1EObC50wcGasLwZDCciWYnTq7O8Tm6MRAEynMOPp48R
         ECBrqT/ctPUQg6lKhMaM+SSmRiy9iGDYpCW1f2DgkVzPSFIV3V5WH+ClfzR9e63BOe24
         NNoV7zSOlQXPTUbdgz/u+H76k1ue3Z4vwHY3bql86iCosjRkyigYdJfurAAl1p3FCq9c
         z+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcZmozevRVxlb6iyzQ6vH3yiHrUFzOiqSyfDxqWuApk=;
        b=EP1DrdOpnjkYLt53kRT3IzaSjDT9slLRPuM0XXOJ9J2yCmB9kyb+hdCNZBCQeG3R8r
         sFqsQhiXWmpBYrIszbmvOnmCzpEOsdpB4Auv65sj1W1yawPsmXHv3kPYNRGzAYptE+y+
         llnZkCfddR2m5D6QPIpAwwtZQV2wNCqCcryRs+7PcuhFTfpU1O2Zk2/3KOhT9WQpbB5w
         aSR4mUl6KcCfF+YuRlXkb+a/PIECQwmusnVjt5lIa31EKfSWGg5Xc/vrTkCxtv7jXzv8
         Rm/+TqWAeSxSBQwK2jM9CWyjw+y4geSJcDxgwSRTUthWjdNYIBR3c+DqgjkGzbLVrDv3
         x6YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i3JSuyoM5webwU5dvMbYzw1nAF+H6Gxh05AUl+RsoDlPYyqny
	XU4mcG97pIv0+izTHgM9O1A=
X-Google-Smtp-Source: ABdhPJwWU7iep89hGO+4lddIwfuiA12F0DsLS0fJmYwvYFQhae2UlL0JKA12wZfD8O3KIX1YmuDWag==
X-Received: by 2002:ab0:23d5:: with SMTP id c21mr9690567uan.129.1605617819282;
        Tue, 17 Nov 2020 04:56:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls2079295vsr.3.gmail; Tue, 17
 Nov 2020 04:56:58 -0800 (PST)
X-Received: by 2002:a67:f3d1:: with SMTP id j17mr11387350vsn.53.1605617818725;
        Tue, 17 Nov 2020 04:56:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605617818; cv=none;
        d=google.com; s=arc-20160816;
        b=u7qKlrzskSrwu8W4DNdaZefpls7d2hPhKuDtZvB0aw5cq2xBCpBU+9AD3uZ9CuDABe
         eP74FjEJ/7i4xD55L0MHswOC0bWkbMUhPc00w73oA3Ipz1d+fVDgD6zxIpfP/HFQkyCe
         o1gpwRNb44Wy6vwwne8uT48cUV5YMzGkpDdek5MPZHlOLYdYuWiYpzgd/4TYWRyE8Tek
         UwsqEXo6HooUhsXVk2fPlyIUnicYYl3SBDXpf9ogJXsXy+Lvzc9s/O5qva3oC3dFPkPW
         SIKId28f5q63iqQJePvjwCBrhYm6OnPOT9cU4mVAhXMBbfgt21LZFfM1rB9gtWl61rOG
         b/9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nFv93BeefpwW2sod/Mumr1420FYDZHJ3PAjpFwEQyMw=;
        b=bLoWyEqKdxSdve6F0nIMNzbk+Ph1A2fcu0iNYQdAD2zQ0JcFBq3TcuP3b0UXRVpfAJ
         9EEBYpLevK4nOS/vHKTEaHnjtBz/aShhHdhI5q/YQJLqZNMjIaPZYF52r0WzZmRSe2Wn
         kT72kuerY8tHfOHu8MoRP6Mk2AlHiJZDmt0BwCXRaW7hAKuDRfdsrhfZhQb1JrPNyTJJ
         UjXm1DhEs0NHyPApPuctQ7pf+e/bUDZUFwNvz+pyzAS1n2N1v/XTfeCXljEPQn/FjRvY
         oHSTYHUZ+fWubur+tPj+z2gfxPBAvvAsB0x6BSjt3SYSNq0deOAul47pFtlK8z3agTFt
         lByQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BG9dmclk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j77si1245262vkj.1.2020.11.17.04.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 04:56:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 41B422225E;
	Tue, 17 Nov 2020 12:56:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Tobias Klauser <tklauser@distanz.ch>,
	Andrii Nakryiko <andrii@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.9 02/21] tools, bpftool: Avoid array index warnings.
Date: Tue, 17 Nov 2020 07:56:33 -0500
Message-Id: <20201117125652.599614-2-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117125652.599614-1-sashal@kernel.org>
References: <20201117125652.599614-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BG9dmclk;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Ian Rogers <irogers@google.com>

[ Upstream commit 1e6f5dcc1b9ec9068f5d38331cec38b35498edf5 ]

The bpf_caps array is shorter without CAP_BPF, avoid out of bounds reads
if this isn't defined. Working around this avoids -Wno-array-bounds with
clang.

Signed-off-by: Ian Rogers <irogers@google.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Reviewed-by: Tobias Klauser <tklauser@distanz.ch>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20201027233646.3434896-1-irogers@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/bpf/bpftool/feature.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/tools/bpf/bpftool/feature.c b/tools/bpf/bpftool/feature.c
index a43a6f10b564c..359960a8f1def 100644
--- a/tools/bpf/bpftool/feature.c
+++ b/tools/bpf/bpftool/feature.c
@@ -843,9 +843,14 @@ static int handle_perms(void)
 		else
 			p_err("missing %s%s%s%s%s%s%s%srequired for full feature probing; run as root or use 'unprivileged'",
 			      capability_msg(bpf_caps, 0),
+#ifdef CAP_BPF
 			      capability_msg(bpf_caps, 1),
 			      capability_msg(bpf_caps, 2),
-			      capability_msg(bpf_caps, 3));
+			      capability_msg(bpf_caps, 3)
+#else
+				"", "", "", "", "", ""
+#endif /* CAP_BPF */
+				);
 		goto exit_free;
 	}
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117125652.599614-2-sashal%40kernel.org.
