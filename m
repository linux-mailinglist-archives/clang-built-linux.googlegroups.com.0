Return-Path: <clang-built-linux+bncBAABBSXJQCBAMGQE3HUK2EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id E657932C890
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 02:15:55 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id r18sf5390555pjz.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 17:15:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614820554; cv=pass;
        d=google.com; s=arc-20160816;
        b=TT9RdPDa+1DOD3V81XEwVWxv1mxB5mIiBhtf7upFxLk+62FCJYLAKiIOH8GzoMFG/P
         pw/oZFET+clvrcGyiTfPlXdVX69/5IDQIipt4lytVOXJvmSCqdLE14zjTH938XQb3Fra
         190B1w3mITuSvx+THlNfbdzOpE1p8xQvLxOq3NHpv6vF9yhDUSUNrD1fbFPx3rbin4Za
         fyo3GKupLNHLSKduIDEgBtdpeBwQBNU8AjmSQjM5eEWKj4vu9jKgyn0lKCl5SRzZDMZn
         OKbjAznuoQyOJdue4uWJY75M4kCdE1YMV741dR01a5jtEx5pNdNgJwC1QG8DoRcfo97M
         TWOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wSTPs8gXeMMLJhsnpiuL2OqVDatMOMP+PPblTUA+oEc=;
        b=NVObRmTXhu7x06kNXhcngZa0H2+hMSghWVyh49bAaodj94bM4Tfc4gYYTsJ/B9iIVe
         wEzoCtkRmzFvKhNgsxa0vMa7Bjq5Kn0gTll+8eJHzrs5/L0mlnQsPG9K7g9Phjn0h63v
         8ntp5jZu0DQUrvAHoBB5wCcxkmYVfY6uZ6CgDCJTIIa+x2agrma63ItBPYuinpYA2+Am
         V2Vx8UDxCXvjyBsqj6mGOJidVckPuJaPPNh7lHdKy12+7dEn1UWDRnKvbNA35y3N60R8
         P/PlgWfnJJjU4cDnDxwfyavVKCQobjp/CEEDojiSjdZDT49Ppk87fESVT+jXSs4wRbTx
         A+Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wSTPs8gXeMMLJhsnpiuL2OqVDatMOMP+PPblTUA+oEc=;
        b=s0c+S/5j/+OI5s3aGCaJ3oAg8QcmCP/gjuPmml59cWG6vhLKCa+WPWHoNT1l2xeIj5
         0FI4YBMr3IlV/EZEIVZkQn6PUY2NTZFVYm/JCUlEKI4N34zCxt4YQ4wPfa6SA2Afm9pn
         KFSNuZ5Cv552CmAsgJsQdK5SI8NC6wlH+9Z6Gf63QPcWoMdi9yTwK3lIZc4wOFCXcg6w
         H3vM9MhuJbfKAwMT/FssEcWK94Tty95nDEhIHJlZwlFpheW2hz3S7rfQDRbZO2p6vze/
         qd5/15SHf3JjFt4JREypLar67KJ3XR2UgStaWmZRErPeCBP0B0z/6rgtACwKkn6y0jlX
         J+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wSTPs8gXeMMLJhsnpiuL2OqVDatMOMP+PPblTUA+oEc=;
        b=Q/pyfL4+XiqMTfeDI+kNe4o+MNkGbmP3a9WsZPKOzboexXMRzufMnf7zctk3GcdDBE
         G4Yb4OT83QU1h0imhYjKIcprNRzcPJq2VANy2ZtrO+vrDAEpswXhHsqRrtTVMuICVS3S
         tAWqWXgx1uiEq3Uwmr2THAVIFDo0qNd7xQWmeOceY/MdmFU1Im5/D1K0ajwjaZhnG7n1
         K49aBZfCSpwr0O16ip82cMNthMzpLjyp7N3Ml5r4N+wYYiLfL8a9bobKK+t1Rhqw6sSH
         BXw+Ws5nwbGirPnpGXSuI74KimYo5GhHvuWN3bnHXm5T0MLCiERznEgdxiAwe3ip4L5m
         KBFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NYErWg7mBeSwXhnubrmm3BXgTFWmGBWMziGp28cYzMh227Lba
	p0xNT+hgBOSJVB9q2rvegz0=
X-Google-Smtp-Source: ABdhPJzxyKnI71oeSSY9OWAGY++Bj0idXyOBvWz0Tnft3yuC4VWvCiLVAOy7iY3Bse+11H42NAwYYg==
X-Received: by 2002:a17:902:d202:b029:e4:55cd:dde8 with SMTP id t2-20020a170902d202b02900e455cddde8mr1543960ply.51.1614820554677;
        Wed, 03 Mar 2021 17:15:54 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4115:: with SMTP id r21ls1957318pld.1.gmail; Wed, 03
 Mar 2021 17:15:54 -0800 (PST)
X-Received: by 2002:a17:90a:3ec3:: with SMTP id k61mr1763387pjc.125.1614820554201;
        Wed, 03 Mar 2021 17:15:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614820554; cv=none;
        d=google.com; s=arc-20160816;
        b=q4Y4+bAziqcpxgR9pDpJtfM5Lc8w/DwhCvOpQxi0+uGKF9TfsVoOckn+SH2ebIsAXi
         sVxqKZOBqSTqII5nOkcR7e6HLjcSwJeSq+IZE0UGddpVf8s8TivLBfLQjyWJjOwEmUDH
         HSSTTMGBNaQqISxhvWb8o7hwdNHEJEjMYkupA6BLdVXiT2UVu5YP8BLgYlZZQog9f08T
         aqk+VQPST8dNEpvvO7wfbwrJH/d/EEMlkrEKB2oVE9XXEQ4Hc9K98h8qfzaKYx61z33u
         eYwRba9gV10nK7nZuc8mhepyfu2HRdW5svlRTIAuQrokBB0dL6ci/IR1qt21tKKLuTeM
         +I9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=DbKamtsDwhbD0AAXwPnov0ztdUJwpmOA8DlCVb/hsfE=;
        b=SVdXLxPdRGSIc35HAKTgGQNmvGfoyejGrwXAzlKqwqvIyeO/74oB7ldGIb2LaW3adM
         zIzIhDzxhN7n/AQ53PPzGmCh/2a+/ws6H2NBgZ0NLWYlOoAmM5A72rpaBWomApil32I1
         lQjt7akgN9b6QfK3NLo36yWlpTXBKGUeqGCrohvDhxZCXaIkuwQABGoMZ1Z5Z+50gQSe
         QulqGiCVT9P449tXjmDieWTKcYXajT0IDhftJ8cPQ5zm5al9oVrEwSpHrtOPLrXy8v+0
         lSwEVTqqakYYhqbyLkG0u6FNYjoqaKnep+vJtLncN3O3OJpp5txR2e881KZhtUenkv1B
         wufA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id ft8si559912pjb.0.2021.03.03.17.15.53
        for <clang-built-linux@googlegroups.com>;
        Wed, 03 Mar 2021 17:15:54 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxz_HBNEBgqhQUAA--.8724S2;
	Thu, 04 Mar 2021 09:15:45 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in loongson3_defconfig when build with Clang
Date: Thu,  4 Mar 2021 09:15:44 +0800
Message-Id: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dxz_HBNEBgqhQUAA--.8724S2
X-Coremail-Antispam: 1UD129KBjvJXoWxJr4rtr17JF4kKF1rWry8Zrb_yoW8XFyfpw
	48Ja1DKrWrGr1rGF4kuryDWr4FyFZxJFyxXw4UJr15ZasxZayUZrnakF17ZrW7WrZaya18
	urZ3Gr17Jay7C3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkl14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r
	4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
	Yx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK
	6w4l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxV
	WUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIYrxkI
	7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r
	1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4U
	MIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7VUbLiSPUUUU
	U==
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

When build kernel with Clang [1]:

$ make CC=clang loongson3_defconfig
$ make CC=clang

there exists the following error:

  Checking missing-syscalls for O32
  CALL    scripts/checksyscalls.sh
error: ABI 'o32' is not supported on CPU 'mips64r2'
make[1]: *** [Kbuild:48: missing-syscalls] Error 1
make: *** [arch/mips/Makefile:419: archprepare] Error 2

This is a known bug [2] with Clang, as Simon Atanasyan said,
"There is no plan on support O32 for MIPS64 due to lack of
resources".

It is not a good idea to remove this config due to GCC works
well, so add comment to point out this bug and suggest the
users to remove CONFIG_MIPS32_O32=y in defconfig when build
kernel with Clang.

[1] https://www.kernel.org/doc/html/latest/kbuild/llvm.html
[2] https://bugs.llvm.org/show_bug.cgi?id=38063

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 arch/mips/configs/loongson3_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/configs/loongson3_defconfig b/arch/mips/configs/loongson3_defconfig
index 0e79f81..cacf9dd 100644
--- a/arch/mips/configs/loongson3_defconfig
+++ b/arch/mips/configs/loongson3_defconfig
@@ -35,6 +35,9 @@ CONFIG_NUMA=y
 CONFIG_SMP=y
 CONFIG_HZ_256=y
 CONFIG_KEXEC=y
+# Please remove CONFIG_MIPS32_O32=y when build with Clang
+# due to "ABI 'o32' is not supported on CPU 'mips64r2'",
+# https://bugs.llvm.org/show_bug.cgi?id=38063
 CONFIG_MIPS32_O32=y
 CONFIG_MIPS32_N32=y
 CONFIG_VIRTUALIZATION=y
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1614820544-10686-1-git-send-email-yangtiezhu%40loongson.cn.
