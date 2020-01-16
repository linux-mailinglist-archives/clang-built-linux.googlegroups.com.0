Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQNKQLYQKGQEBAQNLUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F6E13E1FA
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 17:54:27 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 4sf11877819otd.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 08:54:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579193665; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmWXi5JuRYQOezzLpyJdvdjR1s0oGIpI5Zl4YWsCtS3lGBeOk4H6uu8nZynUZ5ESBA
         eFVE1EatZJAtyzPUUzVTaYHul1mVqO/L4j6NvRNSIpn7pNy6I9bABUL3TKhO3tq4NQkR
         OygwyJesG5Rjzz1Wc9FLr5RrC2tGxcLsLUJLelbbqW4HtlKr4+oqtcsNtrrUaUab7g49
         VWT4bb2S0tCtQehYl6cvTRqE+lwf6tbruFSm70SH8aL89spdKDvtZBCWyzzX6RRTMs6i
         JnY2hxiOkjjbvDH45Ae8DfEM7R5PlN6AQ8XDmwxswwdLGZlZxAODlsWs2L49RKGOAKz5
         YdRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=0vvkiQq1o5zEbW39gWYIDoGWvcAXqe+ln3zy/2Vxgkw=;
        b=O4Mowqym8Odczw7klLPbAs6K75PJ0TjJWWq7ncWIDV5MyldorjqFRPNL7jo8JkULLS
         1YjMNkk29XRkSFFP0Pv8Q1A5W+ia5crmb3NC6VZfTXVypwJT+135G2rPB3sEAsLcH9jf
         iy88pwq4LvnjfH6NVDuRhAoP+2gztF5D7QbHWja+cKfG2xezvp942kLxkqvpS1m5g68d
         tYuFnan08W+F0sU9csdTghvdgonQXxwMR3CeoVfCWWrXGkpUpFwu6Hbmaq6PS/Q13Bhw
         tBVsJNFRtZI0fgWdzhnMAY9/IJvXV0geWl3YoKaF20ST6L1HwkLsJandzBeRr8GwZs2P
         Qfow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Y/OlTywn";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0vvkiQq1o5zEbW39gWYIDoGWvcAXqe+ln3zy/2Vxgkw=;
        b=BLGp9CcU113nK/Kj5aBSyyJ2GV9YW5bixarDiP+cIHlGg/sU3jJAr509yIgiymIel4
         V+ue7l75r2HDcerZdkoDx/ZNdeGrofUdoOqnqyWPeRWCuw8Ufy2WMrdhQZL37lE8Y0km
         ybB/3h9j5+DJuj85eyxi6kzpAO3priFZyvh53BGzMQKRTl99WUO05cMUPRbYEqs94eRs
         8kGFArMuLA8Gmp7G6ENE9K4fSjq2LgYrJOyNnHN7Wa670cjggmcQvywP5c0MTvt5OFC/
         BOoCaRtaeO9UuOrHStLrN44o+7d/d/bsah8dER+8iPKl19MTvlxPQcU3u903haZ+vBd0
         uAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0vvkiQq1o5zEbW39gWYIDoGWvcAXqe+ln3zy/2Vxgkw=;
        b=UKPRDN3hTx96aSwMoHZdLJIiI7pgKjG/nNt09mcJ7xHsQb+whqRtNpMqM9nSow5XVQ
         1dYXhcOkzKVvPFqnOO+zS97A7HRIppvaIj5Wlvfef6oa4F2NJM/e6r9tc7+Su/967Eg/
         EZgNaQ5xNEyjWffjd3ncAzn57D/Kj45LIex/gyZfiwEl3bEYZnPJF8jXWN4V9gOxjr0g
         bXOpDB23BSsSr/Gvp7dGBRy/7JtrSEElb78lvL0bq4f7ZLePtFdHkw1mi9fHladUymXR
         DEV+b1oDL9urEBzmg0WhOIiUVIlP7HMCo9mpLDrdSw0tS7ub9y+c6GQ7Slt99/j5PQZP
         bYCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVx1i8gd8qSI106J8oDEH0aYjO6VQA9rJapXY+z7DUNuBMSB8e0
	ryZ85JRnylpgtP1/OxbYvXw=
X-Google-Smtp-Source: APXvYqzYiU+TvCku+k6ahdGp9dspe2mwf2M3JbrXkNNmL40n0z0GPWEMpKYbaunqFV1pFQCEAbVLdA==
X-Received: by 2002:a9d:6045:: with SMTP id v5mr2583765otj.252.1579193665668;
        Thu, 16 Jan 2020 08:54:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:411a:: with SMTP id o26ls4108495ote.7.gmail; Thu, 16 Jan
 2020 08:54:25 -0800 (PST)
X-Received: by 2002:a9d:3a66:: with SMTP id j93mr2855088otc.25.1579193665344;
        Thu, 16 Jan 2020 08:54:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579193665; cv=none;
        d=google.com; s=arc-20160816;
        b=Q071hJi1GNF08F2VRPpaq6sv+1m3ncdpwCtC+Sj2Bxf8J2BmRYZPgtavZaHqzZP5lS
         qbhB9pjUAyW1vE6pxCalXXjXm5Kw6fPmaFHSthW7mFkJmM3T/F8D0uQvSaxq3e/I5mfm
         IoB+3dkDFrTOslLlwd+1BRnW43o5N+ASU8mnmh2pKO6DYCXvQdHJED4o3SFFmYm6h28G
         i7vkOkWJQ5hH6XpOaJMIsZrEXgr1XAhY6WG7AI5U3W0Fy7KMapHUC+giF/UCMlc84Rr4
         pNc32DaicWcSRMKiifhZluReEVJZ5PVY1pC+k0nOUACmw7j6AMGrQhG/PspkKx32aIh5
         sJYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1SvMxxS+ZvqrSNKhyaftqM2h3HQfo2B0/Z8kpWsYPD4=;
        b=02/+2pMMPLRA7+0CRE70eud5HwfoxrontSz36pYvGZ3QR2LLPfR9Uk4UYoZNY0VeSx
         XYSdabfaxkGpnNvP2usg4ONeq8CVqXZ3FZ85k8ggooxdxH57FxC0xlI3Up8yJpzssJw4
         JKkWauoXderXrSeqT8ivCqCT1z+Pvj97aUZglBh9AF9e+/CQrUQevwmoIutabt67aUS6
         f44BsuKEgWCIMbksv+Bo1oiVxTP1nk+0B8qe9O/jWc6PqyA6aTHKC6nZf5ujR/o0HOJE
         w3YSJA14eUJTh5v8KX2VPJiSRujCgySgziVrYW/9TZqkvYPMkBeOplDBwNzjuXZFpbQV
         OqUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Y/OlTywn";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d6si784938oig.4.2020.01.16.08.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 08:54:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 84BCD214AF;
	Thu, 16 Jan 2020 16:54:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jesper Dangaard Brouer <brouer@redhat.com>,
	Alexei Starovoitov <ast@kernel.org>,
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	Andrii Nakryiko <andriin@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 191/205] samples/bpf: Fix broken xdp_rxq_info due to map order assumptions
Date: Thu, 16 Jan 2020 11:42:46 -0500
Message-Id: <20200116164300.6705-191-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Y/OlTywn";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Jesper Dangaard Brouer <brouer@redhat.com>

[ Upstream commit edbca120a8cdfa5a5793707e33497aa5185875ca ]

In the days of using bpf_load.c the order in which the 'maps' sections
were defines in BPF side (*_kern.c) file, were used by userspace side
to identify the map via using the map order as an index. In effect the
order-index is created based on the order the maps sections are stored
in the ELF-object file, by the LLVM compiler.

This have also carried over in libbpf via API bpf_map__next(NULL, obj)
to extract maps in the order libbpf parsed the ELF-object file.

When BTF based maps were introduced a new section type ".maps" were
created. I found that the LLVM compiler doesn't create the ".maps"
sections in the order they are defined in the C-file. The order in the
ELF file is based on the order the map pointer is referenced in the code.

This combination of changes lead to xdp_rxq_info mixing up the map
file-descriptors in userspace, resulting in very broken behaviour, but
without warning the user.

This patch fix issue by instead using bpf_object__find_map_by_name()
to find maps via their names. (Note, this is the ELF name, which can
be longer than the name the kernel retains).

Fixes: be5bca44aa6b ("samples: bpf: convert some XDP samples from bpf_load =
to libbpf")
Fixes: 451d1dc886b5 ("samples: bpf: update map definition to new syntax BTF=
-defined map")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Link: https://lore.kernel.org/bpf/157529025128.29832.5953245340679936909.st=
git@firesoul
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 samples/bpf/xdp_rxq_info_user.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/xdp_rxq_info_user.c b/samples/bpf/xdp_rxq_info_use=
r.c
index c7e4e45d824a..b88df17853b8 100644
--- a/samples/bpf/xdp_rxq_info_user.c
+++ b/samples/bpf/xdp_rxq_info_user.c
@@ -489,9 +489,9 @@ int main(int argc, char **argv)
 	if (bpf_prog_load_xattr(&prog_load_attr, &obj, &prog_fd))
 		return EXIT_FAIL;
=20
-	map =3D bpf_map__next(NULL, obj);
-	stats_global_map =3D bpf_map__next(map, obj);
-	rx_queue_index_map =3D bpf_map__next(stats_global_map, obj);
+	map =3D  bpf_object__find_map_by_name(obj, "config_map");
+	stats_global_map =3D bpf_object__find_map_by_name(obj, "stats_global_map"=
);
+	rx_queue_index_map =3D bpf_object__find_map_by_name(obj, "rx_queue_index_=
map");
 	if (!map || !stats_global_map || !rx_queue_index_map) {
 		printf("finding a map in obj file failed\n");
 		return EXIT_FAIL;
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200116164300.6705-191-sashal%40kernel.org.
