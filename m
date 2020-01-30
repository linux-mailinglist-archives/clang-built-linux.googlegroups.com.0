Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBKO7ZHYQKGQEIVOUT3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id B173314D64A
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 06:54:49 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id g11sf1488873edu.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 21:54:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580363689; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYZ3g6FI08fO5gV24fHGSsSltNraKZ4R1aoFNNAH+oWHFKmBFtONswD06UPt/C4R9c
         36+kVg8VT/QjtnnHVSOEJboI4WszUQ1blaex7C0i0BP6S1Oz9ec+0tE4gdwe0P0HK0NG
         WYWMbj6jrrFNs/IaCRWy0KNwEmv7Fl29H3JBc/XPTkZBPoSxisZppNgNuXy7iBjC/TjJ
         7gzIAJJHY3jfKqX+d+n0PXXcvco/qkY+48VeysyqEvG0AlmELkOORLJQA06ooM0ZHQcj
         uFw1ZELU/EU9iLfhIxcWH6kihCl7ONtNk/auEzgRkWwGLY66L9cwVPtst1voEaA/QlJH
         dW3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=2K/BbiSVFgw80+iJfl0u65SuJNrJG6MZ3AFKBSrCTJc=;
        b=Y2n3BquyD18PagAeRtmZd/FJ89ii5hclxyNCGkMRHR6dhgM3Fz9axxolViNCZ/Hf/F
         CGSdMy5hl49TXhv7AEL6GqgHNjcg+5YRHGz/uweLaYI26+7qW9Go26T1AApMB0DvXumd
         /qGBppDwnxYttP0iJ9wEQTmsKJUs6AJfxV6lrg9lOzozhS0XOxNoOEWjv/ib0P4dh+28
         6fFnd7hbY4VVfB/+Tj6aEoOD38BhcbKCo1r0bRf3QuX+NdQ3yZx1auhByjjsq3ZxVzA5
         MuoR36TJQISiV2SmDhqgOqpUD19NmurtxPLnk3Pzoin3YHNDBRUBLIw0CKjP630roKLX
         1tow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cpffQRjh;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2K/BbiSVFgw80+iJfl0u65SuJNrJG6MZ3AFKBSrCTJc=;
        b=ayhQd78kqjRRbCezkg8/2Q3gfy6Qxj8Z3TSSd2vnXaYG2hmASKVXpisn4exLyWHh2w
         iWGDqGfcQRgEijM5DMnODWl3oucREpI2yexR2RbEwGDRxt2+8OWLOudamCC4QK/THBFh
         F3rhX0f7Zm70O3GoBHp5lZq15bswJGtpE30/rEokJnEwCS7i9FzMKMulYcgOrDJHiLYt
         Wh5xmKVb9zOAjimoewbkPyHhspiY1e1yeK+ra3lFBWCCeX0mHHgCBFsYi09Pb9CN2TTH
         4Lgh04397ryCpHGgdcEqYyV+NxhVr7y69+/EQQPZQFKovr2o9kVl9AVd1mu+KGrTUFbM
         buAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2K/BbiSVFgw80+iJfl0u65SuJNrJG6MZ3AFKBSrCTJc=;
        b=h8mHjqNBAD/9en0iqElf4pxqBvP8YOWE700mHr1i4aAxmC68j1pXkxzVW9rlFm/p9c
         SZM5QHBtyo0USmDNmdIAAJDSGzwNIJWVrVO8msbGkmEnYjGS4OCQXC0C/EK6cT490MI4
         9BLc3U01qZK4N9Db1XAxWCv5KydF6Oa8HbhuI2dHizd8KQVNaIGFGDbYd19bzkORjugE
         hJiPmKig55wff+5oRsVNQR6SEycyjxk7Sq0cXIgcQbFB9IXlNV6heBBz+5Qq82KtCQfC
         yxhU0GQESXLYd7Yz5GE4shDGOBrJ2HH91SZubKmiatPffOAqAZNcaOlEwAvfRAZMC25u
         IgnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUZY7HLdVaAhSo1bRlM52kv5L/JJ/dhX5DlZ23Q5z63f4xYpCiZ
	hMqyYan1Iyb4nf/tmw6FHsg=
X-Google-Smtp-Source: APXvYqySr2qB3wMK+fCiCv1cPcWPbRWsTdl4oDD+Sg0GgQnZr+Crn42FBmF9y2PwjWmNDMU9vxeKzA==
X-Received: by 2002:a05:6402:1755:: with SMTP id v21mr2053724edx.49.1580363689427;
        Wed, 29 Jan 2020 21:54:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:584f:: with SMTP id h15ls840037ejs.9.gmail; Wed, 29
 Jan 2020 21:54:48 -0800 (PST)
X-Received: by 2002:a17:906:d927:: with SMTP id rn7mr2619647ejb.283.1580363688925;
        Wed, 29 Jan 2020 21:54:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580363688; cv=none;
        d=google.com; s=arc-20160816;
        b=Pscuh7xk8suuzxJn1tbB+S09QcbPRw74/VEnKeKU10P2edHdTLB9kwy+TZIcJSv9cs
         U/fYDGni3GKBquJPBHY+jeXtJpKsOOMiQUaG+BqIP19YQ+jW8VsMTzRVGyn7/FsHfhyj
         i6qlxJNEt3ubY2JcFmqIW6aS/a+aaqrcpmIadSJ47DchpcBcsZCgSO3o/jfU0BcfJHIA
         wA7wQpN30bp+HA0Wj5JK97TpDc9VJxtg3tVqKZpOLHQr1KBCghUnrhRW7gz3yMfVh/Zn
         oAGA34AM7meqJor40QLjRioe2oz6In1b2rpgvPLJkXA5c/Vso3TqcwK02ZRIhLlAVtiI
         yqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=btxUtKcuuUgHXNyQncPIk6bsfG7n7CGuLQ0QTZ6PlSk=;
        b=Cp5mGYqROBvE9PD8oXOUfCdpXvmhQZlG7iClIB7/E6RRvAYeKNYZ0GM5RYFiw9Pt5H
         XPS4OK2pN+YxXE8OqVeJT3qJA1exie5SuTKy8/jiqYsvG7Og6vE1GP6Kdreuw8f3t8ju
         r7WfB/JmPZsNxUS2/nQG9/gtCboscPPqr245+uxDFWgLBf2eBiE0LCoMBY+bH+L/Daf+
         JS0HRdJJ/6Z3Kl0r8pN0bzMWHSTUA7Q+I18d912CNpKKae+IgkiIxJgecczj4G5kgCuT
         a9yWjCQdhih6VIqxh/4ZPWky6HvwyFChYvFADjmstULtdy06QtIUwvJEbtIVVW9T2XXb
         LztA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cpffQRjh;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z20si186346ejx.1.2020.01.29.21.54.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 21:54:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id c84so2714921wme.4
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 21:54:48 -0800 (PST)
X-Received: by 2002:a05:600c:2042:: with SMTP id p2mr3360585wmg.79.1580363688492;
        Wed, 29 Jan 2020 21:54:48 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id r15sm4952495wmh.21.2020.01.29.21.54.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Jan 2020 21:54:47 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 30 Jan 2020 05:54:47 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <630429629.2011.1580363687907.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-mainline-allmodconfig - Build # 35 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2010_276351481.1580363687081"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cpffQRjh;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_2010_276351481.1580363687081
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-mainline-allmodconfig
 - tcwg_kernel/gnu-master-arm-mainline-allyesconfig
 - tcwg_kernel/gnu-release-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-release-arm-mainline-allmodconfig

Culprit:
<cut>
commit 7786a1af2a6bceb07860ec720e74714004438834
Author: Niu Xilei <niu_xilei@163.com>

    pktgen: Allow configuration of IPv6 source address range
</cut>

First few errors in logs of first_bad:
00:04:29 make[1]: *** [__modpost] Error 1
00:04:29 make: *** [modules] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="b0be0eff1a5ab77d588b76bd8b1c92d5d17b3f73"

Results regressed to (for first_bad == 7786a1af2a6bceb07860ec720e74714004438834)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20137

from (for last_good == a4d35e77357c72acd52d6b1e7093b750b384b7cc)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27478
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/artifact/artifacts/build-7786a1af2a6bceb07860ec720e74714004438834/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/artifact/artifacts/build-a4d35e77357c72acd52d6b1e7093b750b384b7cc/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/

Reproduce builds:
<cut>
mkdir investigate-linux-7786a1af2a6bceb07860ec720e74714004438834
cd investigate-linux-7786a1af2a6bceb07860ec720e74714004438834

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 7786a1af2a6bceb07860ec720e74714004438834
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach a4d35e77357c72acd52d6b1e7093b750b384b7cc
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/35/consoleText

Full commit:
<cut>
commit 7786a1af2a6bceb07860ec720e74714004438834
Author: Niu Xilei <niu_xilei@163.com>
Date:   Tue Jan 14 11:12:29 2020 +0800

    pktgen: Allow configuration of IPv6 source address range
    
    Pktgen can use only one IPv6 source address from output device or src6
    command setting. In pressure test we need create lots of sessions more
    than 65535. So add src6_min and src6_max command to set the range.
    
    Signed-off-by: Niu Xilei <niu_xilei@163.com>
    
    Changes since v3:
     - function set_src_in6_addr use static instead of static inline
     - precompute min_in6_l,min_in6_h,max_in6_h,max_in6_l in setup time
    Changes since v2:
     - reword subject line
    Changes since v1:
     - only create IPv6 source address over least significant 64 bit range
    
    Signed-off-by: David S. Miller <davem@davemloft.net>
---
 net/core/pktgen.c | 98 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/net/core/pktgen.c b/net/core/pktgen.c
index 294bfcf0ce0e..890be1b4877e 100644
--- a/net/core/pktgen.c
+++ b/net/core/pktgen.c
@@ -323,6 +323,10 @@ struct pktgen_dev {
 	struct in6_addr max_in6_daddr;
 	struct in6_addr min_in6_saddr;
 	struct in6_addr max_in6_saddr;
+	u64  max_in6_h;
+	u64  max_in6_l;
+	u64  min_in6_h;
+	u64  min_in6_l;
 
 	/* If we're doing ranges, random or incremental, then this
 	 * defines the min/max for those ranges.
@@ -1355,6 +1359,59 @@ static ssize_t pktgen_if_write(struct file *file,
 		sprintf(pg_result, "OK: dst6_max=%s", buf);
 		return count;
 	}
+	if (!strcmp(name, "src6_min")) {
+		len = strn_len(&user_buffer[i], sizeof(buf) - 1);
+		if (len < 0)
+			return len;
+
+		pkt_dev->flags |= F_IPV6;
+
+		if (copy_from_user(buf, &user_buffer[i], len))
+			return -EFAULT;
+		buf[len] = 0;
+
+		in6_pton(buf, -1, pkt_dev->min_in6_saddr.s6_addr, -1, NULL);
+		snprintf(buf, sizeof(buf), "%pI6c", &pkt_dev->min_in6_saddr);
+
+		memcpy(&pkt_dev->min_in6_h, pkt_dev->min_in6_saddr.s6_addr, 8);
+		memcpy(&pkt_dev->min_in6_l, pkt_dev->min_in6_saddr.s6_addr + 8, 8);
+		pkt_dev->min_in6_h = be64_to_cpu(pkt_dev->min_in6_h);
+		pkt_dev->min_in6_l = be64_to_cpu(pkt_dev->min_in6_l);
+
+		pkt_dev->cur_in6_saddr = pkt_dev->min_in6_saddr;
+		if (debug)
+			pr_debug("src6_min set to: %s\n", buf);
+
+		i += len;
+		sprintf(pg_result, "OK: src6_min=%s", buf);
+		return count;
+	}
+	if (!strcmp(name, "src6_max")) {
+		len = strn_len(&user_buffer[i], sizeof(buf) - 1);
+		if (len < 0)
+			return len;
+
+		pkt_dev->flags |= F_IPV6;
+
+		if (copy_from_user(buf, &user_buffer[i], len))
+			return -EFAULT;
+		buf[len] = 0;
+
+		in6_pton(buf, -1, pkt_dev->max_in6_saddr.s6_addr, -1, NULL);
+		snprintf(buf, sizeof(buf), "%pI6c", &pkt_dev->max_in6_saddr);
+
+		memcpy(&pkt_dev->max_in6_h, pkt_dev->max_in6_saddr.s6_addr, 8);
+		memcpy(&pkt_dev->max_in6_l, pkt_dev->max_in6_saddr.s6_addr + 8, 8);
+		pkt_dev->max_in6_h = be64_to_cpu(pkt_dev->max_in6_h);
+		pkt_dev->max_in6_l = be64_to_cpu(pkt_dev->max_in6_l);
+
+		if (debug)
+			pr_debug("src6_max set to: %s\n", buf);
+
+		i += len;
+		sprintf(pg_result, "OK: src6_max=%s", buf);
+		return count;
+	}
 	if (!strcmp(name, "src6")) {
 		len = strn_len(&user_buffer[i], sizeof(buf) - 1);
 		if (len < 0)
@@ -2286,6 +2343,45 @@ static void set_cur_queue_map(struct pktgen_dev *pkt_dev)
 	pkt_dev->cur_queue_map  = pkt_dev->cur_queue_map % pkt_dev->odev->real_num_tx_queues;
 }
 
+/* generate ipv6 source addr */
+static void set_src_in6_addr(struct pktgen_dev *pkt_dev)
+{
+	u64 min6, max6, rand, i;
+	struct in6_addr addr6;
+	__be64 addr_l, *t;
+
+	min6 = pkt_dev->min_in6_l;
+	max6 = pkt_dev->max_in6_l;
+
+	/* only generate source address in least significant 64 bits range
+	 * most significant 64 bits must be equal
+	 */
+	if (pkt_dev->max_in6_h != pkt_dev->min_in6_h || min6 >= max6)
+		return;
+
+	addr6 = pkt_dev->min_in6_saddr;
+	t = (__be64 *)addr6.s6_addr + 1;
+
+	if (pkt_dev->flags & F_IPSRC_RND) {
+		do {
+			prandom_bytes(&rand, sizeof(rand));
+			rand = rand % (max6 - min6) + min6;
+			addr_l = cpu_to_be64(rand);
+			memcpy(t, &addr_l, 8);
+		} while (ipv6_addr_loopback(&addr6) ||
+			 ipv6_addr_v4mapped(&addr6) ||
+			 ipv6_addr_is_multicast(&addr6));
+	} else {
+		addr6 = pkt_dev->cur_in6_saddr;
+		i = be64_to_cpu(*t);
+		if (++i > max6)
+			i = min6;
+		addr_l = cpu_to_be64(i);
+		memcpy(t, &addr_l, 8);
+	}
+	pkt_dev->cur_in6_saddr = addr6;
+}
+
 /* Increment/randomize headers according to flags and current values
  * for IP src/dest, UDP src/dst port, MAC-Addr src/dst
  */
@@ -2454,6 +2550,8 @@ static void mod_cur_headers(struct pktgen_dev *pkt_dev)
 		}
 	} else {		/* IPV6 * */
 
+		set_src_in6_addr(pkt_dev);
+
 		if (!ipv6_addr_any(&pkt_dev->min_in6_daddr)) {
 			int i;
 
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/630429629.2011.1580363687907.JavaMail.javamailuser%40localhost.

------=_Part_2010_276351481.1580363687081--
