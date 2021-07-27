Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIPHQGEAMGQEXHGORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AC73D7FB3
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:14 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id l24-20020ac872580000b029024e988e8277sf7047487qtp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419553; cv=pass;
        d=google.com; s=arc-20160816;
        b=thYY5YTWk8hwqftcYsIYmzNXCu9HA6HRPfSsJ3h4e324/9yX1JFn4nJ3FwS3vGK5pR
         shMWg3oUpdnK3AVoHKwSuSEk5wcK/QIG3AajQLdzB5y5qlaBsN/7UGvM0IWagFjj5jim
         plmhOGoFCjgXbi72l3sbhNMiOjHIrCjnbRUV/Byq7E04AZGXE6HnhI8bGnAYyj/YhWVk
         XkE+CPATuUVmDQrWSFXfdfSW5hk6SGiFQY0TCHRqaOiFj0V5k++PwLBVNdDvePHtTLb0
         8gtCdVifukc/J3/NI5vSsEd/hNautFm0we1z8Ls2PvxXdyeYMq9zYQjHYOHWbP9K8yGX
         G20A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Wwwz99VTXoZroURbOCs8Q0TdP4PjWjiA7P6HWCW0jWs=;
        b=Icxl+do6ILV97aIPeeKp1nEJp6i7wCwcjCTK1IexAlWkih/Yzyfmoif2G9qC+IHBbu
         i7G7oaCAWZfzHu3fmClR05KtD4wmU803imwEBUJqBTFW+9iXGfK5Xkrxz9ldk0cV99pw
         JnFVGUUGPWiN/H1xXvNtPcxjwz9o9gOBA7KyqXnAVBeQO+KF1jko/rF2CcuMxhC6N7sc
         eYnHVpqss4fDMjFhRL8tfA5Lmryv85dpyVuzbmNTnefYKVd8d1Wm+lVVGQ2OYVnbzs4q
         tt5pRkbRaXLYdUADajKmOY196/Gws3UJlIESD+FODzyElCmzQVJPXG21d2mKoyXGh6mp
         /Y9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Eqka1sYJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wwwz99VTXoZroURbOCs8Q0TdP4PjWjiA7P6HWCW0jWs=;
        b=cj829Tc6im8dGNb5aHslX8z+WPMcI2KibDDBL1rqXoLl1ua7SzQqcbkKt/lAdX1p7K
         QHBQ2cFVi8hqGGN8XCbN0I033CRMok0VHlLBNL70fz9U1P1LdrI0bErIcuD/40Ew5BdA
         jNlTVJ977lW5rsVC9spRFo1qQORqF4yDEockAapBPiXDA/8W1qqdehkifxCvPmbb7lVZ
         nHm8L9ZVth8k9AM1moRTVeMky53RCSlg26evEP1dcTtUS0FiSu2iM9+HPM+9zuG9Lg4V
         nK4jC9DtIReEiJcTrcSc50vjO726s+t+NSUa7J2V5VO2d//79rStDsZlYIedffk/c70q
         qCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wwwz99VTXoZroURbOCs8Q0TdP4PjWjiA7P6HWCW0jWs=;
        b=QsxLQ5mbfascYaPJI4dvqGCgjfxIyny/96jQTHjpe3DXlh4wYUja61zDF21YLw+hxm
         91y7QafBb5s9QI3xk+UnpADgxdTZDxUd6En8v4FIYakoSk0SHp69WA2SpqwrgvAYqTNJ
         oXKyspVCE/KWLsL+YHA3ZGw1zHjrq4rnoS6BSy5HOi5Kypn9vmjGfcGLmOZpxS2yIjll
         bZlsfg2UQCinZY3ZCvDqZ3iO1UBz7+Pri952giVdfRvyepFRtOLjlAWz2EtWfavN4Uuc
         +rWNtvVD42PIc9QfEM/kywepuEf7edNJDlcWnuOgi0+FcVqjf5GPh3kDB3zjmSCZVCnK
         Gw9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ff+w+OExFJFRoQm+n7SYhG46TgoZusa83tlzyjudvGtttf6FD
	UJCSXCCZY1yKgSMnOdsd4fE=
X-Google-Smtp-Source: ABdhPJwLyQebJi+qR2lZhz6ITWQOYRHHQurxI8x/TN9PKMo8VxhTpEYTgjv86lg/24lZ47KJD1FSxw==
X-Received: by 2002:ac8:6eca:: with SMTP id f10mr21152449qtv.110.1627419553286;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:213:: with SMTP id b19ls71557qtx.1.gmail; Tue, 27
 Jul 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:aed:30e6:: with SMTP id 93mr21029508qtf.41.1627419552828;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419552; cv=none;
        d=google.com; s=arc-20160816;
        b=Kl01ReVKfHG3gxYhrTOsQ5+/w1XwJHe+rET6lhpwwpBhqHIbgscdGnLxw2sHK+AQ72
         kGYtnQ5YMrDo9bZ+oMJgKonYEOdx5Fqdb5uRESrhNzgz3F5F8Qu+3Ih1AJl12rLt3ewd
         wpYY/yyDwMNF8VZjpa7jz4S0ASrRv2ak9zWYTG1vjS6c6Ev+8pR5aw0fTlYsXM0AthBP
         bIoruWcUYUD3pHk5WC//i9Zrk49ih/n/bqZpT1WUn+uLR4FFuChAS9fZ8AZyw/V81Axg
         AWQxtxCTaMWuXM3uPWzyFIVzqLREr2MsgZLi3y+fUed1rQ5VysrUAQmDQpxJAwFYJKLi
         i2lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hWOw/ShUhNoKqLy5xONCGFke6KYPZW2+ufIHOqWsR1c=;
        b=IsRlFase+ppAn5oyl0P5UQJ5UMSTIRTNobfO5YXUOL1lhMuo4ydpgzNhorsjZGJrAn
         4E3+uGBSTq+mz7DyMT+zqWMIKVu9cuRc5JYDdDk9D+NXoCMS6M0LG6HpIBX8g70CJILN
         pq9vJZ7Y3HPgTDNMrnboq+s1a84ij1EBu/qu1UiWqfCQYcN6tapS/uMlRLozwblVLbL8
         hMtHvVyQhxfwHLrEruyBXjd7O89F4CBbec8PlqLKg0Tju/GKAZuR7x3c55tsPQS0SzWd
         nsa6dD4wRbBODkfdV0S+IKNAYcaw5aV5I7c4kpicakcmLn+0KDLyGIY5xd9GuiPMv3BF
         ORXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Eqka1sYJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id x14si208246qkp.6.2021.07.27.13.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id e21so2306pla.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:a65:4508:: with SMTP id n8mr25560953pgq.407.1627419552550;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h9sm3799487pjk.56.2021.07.27.13.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 26/64] net/mlx5e: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:17 -0700
Message-Id: <20210727205855.411487-27-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2065; h=from:subject; bh=OmCTlW0hm1yp5y421if0NwbN6lmjyu9cB7nSsW7Jn+I=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOGAWhdltIQeHU+KL/U3mjVNHTsB6UqjQVG0s1T MLzYTvmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhgAKCRCJcvTf3G3AJvawD/ 0Y9nwzg1loPqMU8HK2Lrs8d4VvSmczBm8eqGoQs9EHJsiFtugTDtZN4WhRpGrTLVDHbAVJw36Npiwu XAp1UjSyPVsuqo0P30Ske0e8NoMe9NRQvvDWjjH/eu6DZXSUzvdTk7AyY6sDxWLnYxVHz9On+D0bSE bWAHPr93pFPZdB71Z39jl7X5RUPKEl9yNMoKBUeOAh/QG6qRqLWLDpsOuvHg5KjcQXH3vGCDkd/daE RBGpTmExsFn5PWoCaPTQMZTVcQclkMtOuewTAi348iy3H+m/p2MiHtXoIKN81BBc2DeOErD9fZkuaB qhnxDx5Cs0veqgZQ24hKie2iJ9udchP2z4yv2Mht8MwU5oQnyt9hFOzY7IChnZuDwpKnOopj2i7HbI j83p6ORtxkAPVDM3uyFLfT1z77oimcvdb0VN80OeJMLxaAlNQfdtSKGQWdXPNDgr8/R70vafFbcr1u sKwpuZ/TAtn/s3Co1v0I15zYAaR4JuMFRc+WQazB/GGXr4gplZyzjQthIk9WoJgGUlr1oDMzIepkwn LLtMC4hdZjdHAq0Jy9SOMn2P2adM+xuw3mC6Jz21qW11KnQMWkboR2/F6Nma6Zw2js4eJlngpBFH0A qinUegqhIOxl+dBkBKV94R0Hr+Zy+sXz6J507mfpqyDbJcpzzwnGzHISubWw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Eqka1sYJ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct vlan_ethhdr around members h_dest and
h_source, so they can be referenced together. This will allow memcpy()
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of h_dest.

"pahole" shows no size nor member offset changes to struct vlan_ethhdr.
"objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/mellanox/mlx5/core/en_tx.c | 2 +-
 include/linux/if_vlan.h                         | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c
index c63d78eda606..39942a952736 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c
@@ -207,7 +207,7 @@ static inline void mlx5e_insert_vlan(void *start, struct sk_buff *skb, u16 ihs)
 	int cpy1_sz = 2 * ETH_ALEN;
 	int cpy2_sz = ihs - cpy1_sz;
 
-	memcpy(vhdr, skb->data, cpy1_sz);
+	memcpy(&vhdr->addrs, skb->data, cpy1_sz);
 	vhdr->h_vlan_proto = skb->vlan_proto;
 	vhdr->h_vlan_TCI = cpu_to_be16(skb_vlan_tag_get(skb));
 	memcpy(&vhdr->h_vlan_encapsulated_proto, skb->data + cpy1_sz, cpy2_sz);
diff --git a/include/linux/if_vlan.h b/include/linux/if_vlan.h
index 41a518336673..45aad461aa34 100644
--- a/include/linux/if_vlan.h
+++ b/include/linux/if_vlan.h
@@ -46,8 +46,10 @@ struct vlan_hdr {
  *	@h_vlan_encapsulated_proto: packet type ID or len
  */
 struct vlan_ethhdr {
-	unsigned char	h_dest[ETH_ALEN];
-	unsigned char	h_source[ETH_ALEN];
+	struct_group(addrs,
+		unsigned char	h_dest[ETH_ALEN];
+		unsigned char	h_source[ETH_ALEN];
+	);
 	__be16		h_vlan_proto;
 	__be16		h_vlan_TCI;
 	__be16		h_vlan_encapsulated_proto;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-27-keescook%40chromium.org.
