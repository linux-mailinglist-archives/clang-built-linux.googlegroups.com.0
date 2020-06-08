Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5MR7P3AKGQEH52NAWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2E71F2524
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:25:42 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id i82sf14762572qke.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:25:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658741; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4EnsmgY691FrCC32w6uONcGj8hZvPCLjVAiY3NnmzBX3Vz1qe1n4o7eARrD1sPgHC
         sIBmu5zKfNItMaIMQZm2rG22qE9dcVYveifJqwx1qCcFXR5+s+7toEYZElStkkmJ9+ic
         KFvhOlperHLLMHJ5Uy1RhKvXu83J/vOd9iObu2+wpO3z41O3o+OXozCwJ9FL6wRZa53g
         Noh8vDCEhoCSPjDGwdYKVpzArWXgxec22yB2RSvVx0qn+TNN1VzEqZJdsKT85IZckb3e
         gEULkJ8BMLe8n5xJZTfwb+ZhLNmxEMECPZtIqC7EC57YlecAkjeba0NsYu+zh3Gn1M2z
         lm6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=LUUl2K5mpzm62zm0+GAajIBj9EVvWo20f38qS8Nq5vI=;
        b=N2GAYtEV3x5hk8bDN4ceJAmdO4YC2FLpBij1mcH4d84EN9Cj9J1KAnDsr6DMU/7NtI
         l4v4uGvXsxyZFd05a/LRl0NSSC82XgNMbQ7KtmBxC2kGMhnb6AgD2fnoLvDLGlLNiZav
         7Yq9pH/7qudhhRDXrs5xodzOZnx0NuLzRBV83pEclC4vSjOkepH8NfxnaZG/nMGsrrRg
         jyHoGReKRlnx2Q24auo59SKKbVLcwcueGIW3EdQzctNJR5qL3R4NjKOAF89roy2hT4YX
         gbs2AlR4S8qpmtgF7o+0r/PG9xd6b3d0sxXfCCoH+Cj6hiv6KjG0JYYDh4N+vtvVTyTx
         l2Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nkGnu3gf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LUUl2K5mpzm62zm0+GAajIBj9EVvWo20f38qS8Nq5vI=;
        b=EVy7SVwcAry6TvY7B/trGif4Uukbvno45jZsrDy7Gu9bJ/nOV1y+6TUkYQkywQhf+X
         0GWaDfcuisKWYQKzV2Q00Kamz3rQcH2Dz5zm8IK+9cDpm7TNbktP+zetds9czY6651WP
         SLtNmPPuS4t1+La/EeWZqALGSHgm7mAHMiUWxQ8WwNwSFJrgzedVBaTv6qVQUVhxNxMH
         8BdCtSHZherxVP+X5uk9vNCcn2NklMt8an4AhJV0lzDbf7dtJBwYEE0UvVFl5Fvfp/3d
         94eChOuFFDl4BwzB+kUZnY0cXOXLQfgB7Zc3AjsuYHT58mVL64sG7B3+v5QIRw8C5jxn
         ZJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LUUl2K5mpzm62zm0+GAajIBj9EVvWo20f38qS8Nq5vI=;
        b=jA3a88FY6gKV2lbIRJ6+B2J8tsDExIuwf0QLkRv+rVQJdCHOAeT9dvdhL5JfVSMtAA
         GlwWvTC9+TdXlADntgq9ORyHMsI/ElwV4SedF+1tVDT5nxNi38ep0fP1Uo7kZScA/u+y
         6hDfBHBULry2p7OsaXdXX4fsaL38zXFwzCbA8l5vDmU0kO2aiz9OVBvstsZ41toNNSFU
         fDJFfApFMWJ2Ks3LhFjKssIc1dJw5zXhhiLRhxkV/VVCX5pALjzG+BoJOimOKh1pc684
         SGHABWSHnpaLAzcuuL1+jvYgvuIRN8TjiYj1N4y9/RnC327/suHAkxc5mgxJNxm2RM+q
         JZ2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317VYhww8BbY877W08V0lom2gmvitpKw2J8YIfBtdYKw9BPl5B+
	mCxgr9tlhhz2dMo8MJYRBIY=
X-Google-Smtp-Source: ABdhPJwLmRhrYqxOGrU/0pIKWs9NQUSdErzW62yxLUF9c8b2j/sTIOvL+ANyQb4gm8uSoXWD19sYfA==
X-Received: by 2002:a37:bc07:: with SMTP id m7mr25274324qkf.93.1591658741452;
        Mon, 08 Jun 2020 16:25:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3559:: with SMTP id z25ls4292176qtb.1.gmail; Mon, 08 Jun
 2020 16:25:41 -0700 (PDT)
X-Received: by 2002:ac8:44b3:: with SMTP id a19mr25903150qto.285.1591658741102;
        Mon, 08 Jun 2020 16:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658741; cv=none;
        d=google.com; s=arc-20160816;
        b=tuY/Tra6WBWb+vT0ggJMynEMd2BfpgCSnWa2+kgSJ/TfoQWqPTiqVQOPeljQv3Er+Z
         lDPcNJIVhagr5K7IyUAk7/jHb2jWW/3lnXlXrfUxkiXmL1gzCeoUFWKaJwVXlt2i8FAB
         Lda3yBRw3E5j2Rab1ugcYrUXXnZyKoBWx54/+ePrTUhjcTfV35BVnYeJpNWcofrZwqih
         vRIwUQueQFcV9aGdyQDAnN/TV/62D3jfxywz9CAHLPnouE0mWShlbK7kNmBkeYjKhvWs
         pqRoYnMwIfwqm99rxSoAv2mw6ivxHAnqEKDldJUiQV1uHfPN6yxduTfS++QnAXSoLStb
         MpxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=N4Ng7s4ZeLIOLu6WXNmp2PXfofQHBH0Ut0Kv/YHxsYo=;
        b=GALXImmjFGO+K4fWm5LJIXBuE0n/Y09Wa6I55QvS4ZS+yYElRdqOsXhAyfRV1zcelM
         LaAMy7UYxX37myRTqY2gbNAHjeZb987TYxaI3w93xNwmcnCTZsBcGiV8l4vaH1RmjiOu
         INfPs9MACfLqmtGVvupOo4HOT2ilxiVWQb8C+fCuCrgrCBM88waipJAYptM9qitUQ151
         zIHbrO1K53PSdea8mIsvvaalaIKsIoiAZAN1GNdTsCJP15U3se/Ko+ff6SVyqnzMmfb3
         EYC/oJlAY8aJBiZrOJZbXj9v0RkuWcuaAjuiE3eQID8mnhrsWgB/SrlttHLcRn6qKizz
         XhwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nkGnu3gf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y21si669586qka.2.2020.06.08.16.25.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:25:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2BCE120812;
	Mon,  8 Jun 2020 23:25:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Aaron Brown <aaron.f.brown@intel.com>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 27/72] e1000: Distribute switch variables for initialization
Date: Mon,  8 Jun 2020 19:24:15 -0400
Message-Id: <20200608232500.3369581-27-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232500.3369581-1-sashal@kernel.org>
References: <20200608232500.3369581-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nkGnu3gf;       spf=pass
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

From: Kees Cook <keescook@chromium.org>

[ Upstream commit a34c7f5156654ebaf7eaace102938be7ff7036cb ]

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC's proposed automatic
stack variable initialization feature, this triggers a warning (and they
don't get initialized). Clang's automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
doesn't initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they're used or lift them up into the main function body.

drivers/net/ethernet/intel/e1000/e1000_main.c: In function =E2=80=98e1000_x=
mit_frame=E2=80=99:
drivers/net/ethernet/intel/e1000/e1000_main.c:3143:18: warning: statement w=
ill never be executed [-Wswitch-unreachable]
 3143 |     unsigned int pull_size;
      |                  ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=3D44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/et=
hernet/intel/e1000/e1000_main.c
index 3dd4aeb2706d..175681aa5260 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3169,8 +3169,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
kb,
 		hdr_len =3D skb_transport_offset(skb) + tcp_hdrlen(skb);
 		if (skb->data_len && hdr_len =3D=3D len) {
 			switch (hw->mac_type) {
+			case e1000_82544: {
 				unsigned int pull_size;
-			case e1000_82544:
+
 				/* Make sure we have room to chop off 4 bytes,
 				 * and that the end alignment will work out to
 				 * this hardware's requirements
@@ -3191,6 +3192,7 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
kb,
 				}
 				len =3D skb_headlen(skb);
 				break;
+			}
 			default:
 				/* do nothing */
 				break;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200608232500.3369581-27-sashal%40kernel.org.
