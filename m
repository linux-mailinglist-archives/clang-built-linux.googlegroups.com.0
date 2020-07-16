Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ5YX74AKGQEQ5CVJGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D951221B8A
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 06:49:45 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id u186sf3004339qka.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 21:49:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594874984; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSqAExr7w82SUSdo/dLziovxr+8IHiMYN8noWnm4mv6wUa+3Oum2DKH5Dw8H2CjwtB
         lxBs6kw+WMSD7AY/qTVlBGKVBMZE5kz6kukAFiyzm41mCs9oa2Dpengjx6j+I+CNbrcI
         wXzzTKUnoraKnC2h0Gtzf1JIe4WS8sFsfoyEq4rO6snyNHsJhek/Td20ZgeQpk4OOr2R
         6wm8ra2IFlopQR579UARk12P+sR5ss7zaymaFHgHUNPL+39lmzPxo5VY3alemfi9rRoA
         JYi0ktzvC49Or4VCIsxk3BmlcvFNd9l4AHwpgYeBuQBla2s8wOTJDlcvnauEHJsnpNzK
         q31Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=gbgPWqjspBaL1b99cXvJBgtqKo4FxEUUg2L8hmC411E=;
        b=nHyBJUqo7wz0DZvz9k08BA7U4y2NxncLQD+CkD12469dY6dDIPzXyPn00KrbtqeATW
         5TKtdXem60JBsRBcRoPIbakHvS5ucKRVE7VeF+9dvwH0ZOEOsPaGnoVp7ch2Xwk/TyzC
         hE9Lmql2q2nHn3aXPWlLLQtaJYqyovcdkAckT+XfuA6G83Xw7qC2aOq0QUo+g7bUkN+n
         Wm+XiYjUhX7Hm3uBjh6JUnagVC2MqG1vrxwVYaNw5bI4FzAO10wyDUWXVDrgx6oAmDrL
         d4kYIggzHbX6M/QP6EK1p/0uneJ1gwWo+PfZMS4RXnpC9SlUntZeKj67Nr+/u/8zWvri
         6MWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SN1EWsen;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gbgPWqjspBaL1b99cXvJBgtqKo4FxEUUg2L8hmC411E=;
        b=HhX4MNv3WF4oqj0bMRc7WVoakXM5sUWn89E2ONd85R2WtzzJ9UcCVDnOvhyjQwXwRH
         rp1+Yg8y5qb0Hbjc1BktsiSJdV128MCglKV8boNzf9MGeWhsC6KXQM0ai5QWFlPmbeWz
         u+IseTkmjauZjnGTQUl54Q3FCXFpbFR64GX0ppddcZvh4MWe0kDD5BPeKA+klpfZBa9d
         D5VxsfGZ0eOMF1V8fU4wUQi9Q1OjKkyE2/dbUo4TaFuMQIqJkwY4Qb9YD6BwbXnSMC87
         g72Tr0LguYGYJOitk/Imo6MXHrNK9Nerb00Z1V7W/Ds/ZA38U5AlBaW8OTgl0D53p6LS
         /xLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gbgPWqjspBaL1b99cXvJBgtqKo4FxEUUg2L8hmC411E=;
        b=mvo0c0FfrF7K9v3GgRlZkSAvTqfox1aDMCIrrjdG1+LSmZzE1bYwjS4zAJUDJDLBhH
         /YagFJs2qSVRQUmG5gvmA9fIIhahK9Zb0YMHxWi9sF7Osvbhm9+5y6LZiqMZfHNacLJ4
         SNttBlCLzO7WXYbN4w1Xt369kGgfJ8gw9OZ8pstM+kVBbw+i3zvXZP/EUg3ZqVhjUvTd
         GbG/SjKFNXSkmUBxoWEdAOLgKpj4VqiSKZx8f1KXu++lbNdJW58ZUknyaY0wpL4h4D/r
         9IRO7nbfs2OgswXm4MKqmPOg95Kb3UNwrpyfNa5ZvBQZryu/71fNWMUBMIV1njUP/X1J
         9mgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gbgPWqjspBaL1b99cXvJBgtqKo4FxEUUg2L8hmC411E=;
        b=jD8wIkUuuUdfSlD1zbqxz04uUhZ5hMKyRMWSw1nZ2m0ZEJo9xlQ3llnxEf+epmbL4p
         Rzvdomi4noqCW3kHvcsks6+AaqgrjOJz0w6eZiCZz0xbAVlDlbZdkzHai89byM9OIhu0
         t3EC94SXLyWtIBG7qdMOUFD9WLwdcNVz4lPikOT7MK0DYcJWxq8x+eWKSMDgM4a+ZUFv
         NkrXFVsfWjS9VrXaqFIQlcECxfwjF3R/5mjpsrLtMWLqrMGJ90iT6NwS6Kwf9pX0pbbC
         OD+f6bkc0nuVovil80gRV9AYEozmJcWPj4juHhCbE6FsHtcn2eAuuG2RX33R2FBjK5NC
         rKdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531l5v2XCXdVde5e5ksg64gJHFZBkQY8oQHLQsSM11hej9yir+5/
	U67KRMLAQWw3hd7zkm8Na3o=
X-Google-Smtp-Source: ABdhPJz8tXV1I2MOVeIHVNEEUFb4ajMB83Zv62a/dakh9WNsujn0HmL9fofBxY45ZhWXnRdN2hBKqw==
X-Received: by 2002:a37:a543:: with SMTP id o64mr2299634qke.247.1594874983873;
        Wed, 15 Jul 2020 21:49:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:786:: with SMTP id 6ls2133340qka.0.gmail; Wed, 15
 Jul 2020 21:49:43 -0700 (PDT)
X-Received: by 2002:a37:cd4:: with SMTP id 203mr2319520qkm.490.1594874983546;
        Wed, 15 Jul 2020 21:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594874983; cv=none;
        d=google.com; s=arc-20160816;
        b=bcX2ghBsM/C6dWkLzSmISAhnjydDF2Tn57hRpgT13L2SqJPEWbm/xnw9Z4FD9O4iUo
         EMGNBRzu/XuGT3+8gyXqXoWKk8KE0hXJ3ploOGAwIlBQu4GEXNhuaFpsONwAONUN91cr
         AkDCSdW7tRIJaHQNdEPd4exhxArrXyCCaHyAt/rJsMJIs0JIawwQ6gRU1E9UqWc0cG3e
         3h/oJ9AsTBNEIAuw3xU33Z0fHdhQZb9SDPg+ZkSPBiMec8M2mOYkD+xM92knYo0q9h2v
         o7K3AlmdXzF/vi555GVT2agwVdkCQJpQExlyyT8HJFgZgFlNj/9j6N1q9DMhExJ9ySUG
         /SGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=n811LGQ+Fs+fBe93hqpRgAF7EkTTe3DB3wlxhpthHDw=;
        b=tmgiePgy9tCV+0MKxordHnkm9ad0kXy06tHVwb3uejaykEykUR712GGg4g/sb6h+C9
         lEVboVPcLK/TuQzir+w0uAR6tamGFUwOzvUB/SUhhsdhl81duHYJJuRvHWtrWvFT2T11
         rbjPyV/huGbqvsBqhc6MmL3IsGHoyQgI8hZo1UWjHP2rnCkBEHFyGSXtnj25fI+M5H56
         Tr9T/91Sp6ExaGj6+oYALV11uB+5NzP4erEsi7ECV8xNs96C4SOI9RIVY0QkPjmVCqeM
         ZcgkCHLj7+0tEyGsFLunLJEbJD0KHlsSe6KEhbTKufwtyLa0CW8ftGMXJZS40Jvphp+c
         EcXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SN1EWsen;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id w195si275837qka.7.2020.07.15.21.49.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 21:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 80so4394505qko.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 21:49:43 -0700 (PDT)
X-Received: by 2002:a05:620a:91b:: with SMTP id v27mr2143475qkv.499.1594874983094;
        Wed, 15 Jul 2020 21:49:43 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 16sm5606381qkn.106.2020.07.15.21.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 21:49:42 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] igc: Do not use link uninitialized in igc_check_for_copper_link
Date: Wed, 15 Jul 2020 21:49:34 -0700
Message-Id: <20200716044934.152364-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SN1EWsen;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
is used uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!mac->get_link_status) {
            ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
occurs here
        ret_val = igc_set_ltr_i225(hw, link);
                                       ^~~~
drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
its condition is always false
        if (!mac->get_link_status) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
variable 'link' to silence this warning
        bool link;
                 ^
                  = 0
1 warning generated.

It is not wrong, link is only uninitialized after this through
igc_phy_has_link. Presumably, if we skip the majority of this function
when get_link_status is false, we should skip calling igc_set_ltr_i225
as well. Just directly return 0 in this case, rather than bothering with
adding another label or initializing link in the if statement.

Fixes: 707abf069548 ("igc: Add initial LTR support")
Link: https://github.com/ClangBuiltLinux/linux/issues/1095
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index b47e7b0a6398..26e3c56a4a8b 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
 	 * get_link_status flag is set upon receiving a Link Status
 	 * Change or Rx Sequence Error interrupt.
 	 */
-	if (!mac->get_link_status) {
-		ret_val = 0;
-		goto out;
-	}
+	if (!mac->get_link_status)
+		return 0;
 
 	/* First we want to see if the MII Status Register reports
 	 * link.  If so, then we want to get the current speed/duplex

base-commit: ca0e494af5edb59002665bf12871e94b4163a257
-- 
2.28.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200716044934.152364-1-natechancellor%40gmail.com.
