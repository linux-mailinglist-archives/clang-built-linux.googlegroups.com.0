Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDEUQH5AKGQEC5Z5MJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CF924E346
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 00:26:21 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id b127sf3573915ybh.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 15:26:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598048780; cv=pass;
        d=google.com; s=arc-20160816;
        b=0FLbxi20jb2ThuTCi21pR8AOn66xB5kR0QtEpfkhAZJXNt4xe6oyhz4cgT4ucz7HXU
         tBBAZbs8ewmjEyTPwpKBgXKxZI95lLjSo3KvTHOBDX++YsH2j5OCida3h5kf0FlKhejJ
         Qi81TpZ8DOPO8jXJ2aovh5TlxrmibiV5TUCvgBGRHyiZ19EZzGBP56tRCYQdEgmoD5ho
         S8WVHc7YIgQYA+LJhyrD1/fIzTkmkJKRj0WBDlXgFSRu3DCBNMYKtnhWPh9I26pIRdyH
         nxBRFQCaXnjtkHm8FavJVbMa6gvFxaAOcNUXU/8esBGHCMZuEvLcMxkSBXb0Lxma7Yq8
         ho7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=kCL6L2dj8L+66KTN80zRuyw2jMQObSyAYKo7MIRTsW8=;
        b=0yjY8ohsOl5UVv3MR7+hF49YLiCFHRKmT9KmYedT5ZKTcuYZMOaRpjhcK7yH8imPkr
         BdYpcS6lEkNegv+0kgSP11ys63EymWnGFt4lxFkbowCdECzycTkyG8EgPHbo1pzpP4sW
         lLCO6lD1t4RVvJmzWvBqGR1DiVL5O4dktfcNqEH1I3fhl7Ctys6nWYZt93EUZItMUwxr
         W1q9lnmOLusnk5RORBFyPFTjZxbbJqgUspMXizcTL4BMHtl0Er2CepnnOLL/g7tfvMQs
         8CWTScm2EceAdUjodfVV3aEaxG+6jNolYlxdDt7kcROnJtMnZvgtpO1BSa0DH02v/ila
         e2pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=huthoZKn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCL6L2dj8L+66KTN80zRuyw2jMQObSyAYKo7MIRTsW8=;
        b=IZg0b1bLm9eBfArlmUPDl4mfTxx8dEWAL1KIKeDShqGIUfiEexHqq0UC4gR4Hm1gEr
         UlDKPzKZ8Z7EsHeqA2LmzBLESgKunOaO4J6N/KT8NL+ymTHtMW4mKTIJDOD8HiV1Qjxd
         yEXAlSvZ37rKu4nQ7Yu5XwvCXFOuqwSFFVUeLiWgCFiqSiqEGsf99fyfw1AxVKDQVj2o
         dX4kN3+IAHSVNx9j6VcPeL3LzY1UrrcOmw6qYD3OKiNo2V3KKBtZKOveZC9e5DqtZU9Y
         hm4ueET9a78bIL8fe+U1SSkOMJGU43PujFsKZDskOr6R3SpGnKBfluBqUkEZxxt605xl
         GMiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kCL6L2dj8L+66KTN80zRuyw2jMQObSyAYKo7MIRTsW8=;
        b=CDgpBltWWIg8as4i/psPNP3NTxrFF2MFNve+0YyLqp86P9XRz3tjcw4XqCckTSrEsO
         RDrN4kN1E6dJNWj9aIoThtBwtdtq5m1P1jxIQOLi1ANhv0XqIkpcaXpX470wvAP+bIgr
         GY9MySmjddEEM+yX8X6q026OlG38UJgoVHpU/VJjCfoMEUTnfmM+ZW610ZGZpjovT2aj
         2EpsXLGq9VdVMJlAULGq3+atOcp/ZFy1VtgYQehN1yWah7GCdMuPg2xd3k3UUrdNH7Cf
         XqxeZgj9aS5uCurjeXumZSEa+9xwQ00oJKBB8pMdVzPYCDhc2v09n8Ivt3mq83BByNjw
         b6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kCL6L2dj8L+66KTN80zRuyw2jMQObSyAYKo7MIRTsW8=;
        b=DZt2LkS6Vmi1iTI6ZmI8nZSVVmGdSGs2BJqhC2ASqp0yOBTsO0ouwvVUVeRin1mVyg
         Lu2zV7nvFwnAjtLhyPXra3Qwlln6GuYzJ693D5QDQPzM2WiqDmYwmmSnfKyeLXGXmVRc
         M0theDFQD+4GrXTqJtuhbiyTPSW6NyiotxWMdWj6LBE9Kap9A1upmsOAY49j2+NF98uk
         sfkenmSyvEYYkocnNqBVTC7RcIf0eFNMTRSo9V5t8uK4kiBhDJ+A/b8iAbBjiQL2jxXK
         jvGn0YRLCMzbKZERoaeFBVmycdeDS+PLNWGm6ECm1lKZ+8zqYb035PsTBKCNBXZdVsUC
         8znw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YDU375SXHGhJ4e3KDHWwFF6DwVJDs90wmo7lN8k9r1UuslcUc
	ZwmCoZ1oWCXGJfx2CiTOLIc=
X-Google-Smtp-Source: ABdhPJyldniVHqfi9oTmibX3gXWZfwN9ln4860FdiskYTuKnGFSpxFTxbjlIqIKMys6u3CNDqdSlRQ==
X-Received: by 2002:a5b:b91:: with SMTP id l17mr6568579ybq.276.1598048780441;
        Fri, 21 Aug 2020 15:26:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:40c:: with SMTP id 12ls1387055ybe.7.gmail; Fri, 21 Aug
 2020 15:26:20 -0700 (PDT)
X-Received: by 2002:a5b:70d:: with SMTP id g13mr6604814ybq.160.1598048780078;
        Fri, 21 Aug 2020 15:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598048780; cv=none;
        d=google.com; s=arc-20160816;
        b=eZbIz3LYT5qsqz5kA2tgUj1Kc5BnX45wOrkSGg3vvappJn/mw7txer4KuiYcJnvmvU
         R9X2WC5epWagT4VR4JvXEw4qJBYULGooaCuxr1l7x6JC/AF9bit9b0Dc89STJh/qlD7h
         qJq9AsmmwwW/tc7EKpM5JZ0wwuuNJugByq3Gp8WvQT6+jNnXEfIEsDikksUP4UCzv7eM
         bJvYSgFKDgFI/yGAkayOPWawlow4jJEE2/cSFtRSryXxhUcz8pr71YX+ehBEvbAH1mH4
         DlTBgdfW5br/KvPOybEUv/aUAY+yVc+0VqSkr5ngE8GKBjqd9k0bAfz6228bRANdgdZZ
         o2EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HrOAERB4tSMoXoJY/dYcv8QwQPeglxKI3SzuuvU5xXQ=;
        b=xFm/kyVMx+A2ZlGGedtLCCQILi8XiKlWDTgnLEkzyXPlaj9D+w3wmlk+sAWJuSO9zv
         ivEVqGk0hQcYsfecMTxEYtPFY3sw+oUuVsp7ryCfbvmdw4dXHFlqOymzmoN4BsTPejqA
         sWMgq/LsyOs40kyTfy/eAI99qTfAHiCbK2C3AK+d+hagIXsqdrZ7nzaiKHty9Sfb1nBx
         kXrJtL+wcT8mvyzMMNfB1FsJl1gLXRgoa+A6BGllIHbNdwQPCp5rezm0OVOGnmeeyMl7
         BANna7RdLkpYZ20CL5GHOdUSD/xkf0sXlR4JTXkCX+8E0bfHq0lNCc6oJHaU4DUmNWeO
         fI2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=huthoZKn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id p67si117839ybg.2.2020.08.21.15.26.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 15:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id cs12so1342694qvb.2
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 15:26:20 -0700 (PDT)
X-Received: by 2002:ad4:4ea7:: with SMTP id ed7mr4536770qvb.8.1598048779620;
        Fri, 21 Aug 2020 15:26:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id t32sm3649927qtb.3.2020.08.21.15.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 15:26:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vivien Didelot <vivien.didelot@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net: dsa: sja1105: Do not use address of compatible member in sja1105_check_device_id
Date: Fri, 21 Aug 2020 15:25:16 -0700
Message-Id: <20200821222515.414167-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=huthoZKn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

drivers/net/dsa/sja1105/sja1105_main.c:3418:38: warning: address of
array 'match->compatible' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        for (match = sja1105_dt_ids; match->compatible; match++) {
        ~~~                          ~~~~~~~^~~~~~~~~~
1 warning generated.

We should check the value of the first character in compatible to see if
it is empty or not. This matches how the rest of the tree iterates over
IDs.

Fixes: 0b0e299720bb ("net: dsa: sja1105: use detected device id instead of DT one on mismatch")
Link: https://github.com/ClangBuiltLinux/linux/issues/1139
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/dsa/sja1105/sja1105_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/dsa/sja1105/sja1105_main.c b/drivers/net/dsa/sja1105/sja1105_main.c
index c3f6f124e5f0..5a28dfb36ec3 100644
--- a/drivers/net/dsa/sja1105/sja1105_main.c
+++ b/drivers/net/dsa/sja1105/sja1105_main.c
@@ -3415,7 +3415,7 @@ static int sja1105_check_device_id(struct sja1105_private *priv)
 
 	sja1105_unpack(prod_id, &part_no, 19, 4, SJA1105_SIZE_DEVICE_ID);
 
-	for (match = sja1105_dt_ids; match->compatible; match++) {
+	for (match = sja1105_dt_ids; match->compatible[0]; match++) {
 		const struct sja1105_info *info = match->data;
 
 		/* Is what's been probed in our match table at all? */

base-commit: 4af7b32f84aa4cd60e39b355bc8a1eab6cd8d8a4
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821222515.414167-1-natechancellor%40gmail.com.
