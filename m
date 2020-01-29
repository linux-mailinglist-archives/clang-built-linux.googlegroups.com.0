Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZXGY3YQKGQEM2BNHMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC6214CE6F
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 17:31:35 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id z7sf99306wmi.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 08:31:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580315495; cv=pass;
        d=google.com; s=arc-20160816;
        b=yP2a6Q4iaXBpZvDRgXW9LBAIM2Qom9i+2/5K8pLmvpeTDO6lA0Jc/VAszbS7WPUKwL
         ozJ0sv4B93m+/J7ZSq0689oxpHWmFtyr1WE/apBfTFkCM2MP4d4iwPzAGLBszBKqWV+G
         4QJKR3FYI4QlH5SkUK1dfd4kQNjujRW5l8Va9ZCq1YyTp5MQ6/3ogcIvxpMzOISHz8PX
         wx7UJbm5DiOxnCN8Fg7/C4Qpy8BM37WZYzc1aqa5LdDFGcs5y9Q5LSbhQ/s6SFhs6WXI
         W4spNiySqyb1IHkAWPxdwNmU9bznuhOB9EkID2CzFQB7uYqTHEFApLSDmCrwdC7mB+fo
         oqiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=11J3BIJYsL/dUdAlvvDpTLxGSIcrIzejJLa+44aplAU=;
        b=D4agSPFyddcyzXvlH9PqjnCwl+ZSPt5Ml9jpn86nuli1zaQKvoUl0PuBPX/BJ42D+G
         0NERrwKR83+ZVqs5sxYGS8w0dTbNLc2J/0vUacY97E08nyyiZrzl56uFaqic7ZsELaMV
         RHbHPIsU0Rifcc02uq0PSfP82qc6ebq3GXsB2BZ72kkt8SiUTW0SeMOGtPfCw1Vogxs6
         iJY7E2P+QcgnWEveyPDxpPSAx302m6g3MNC24PhyJI6IWh1oh1d98qaoVcQWYEYiIpdh
         T7ieV4iITNYEO+zlKLIhf8jOkkSNnd2H3taNzNzJ6JJw55NhEEHmYObNedYJao/DWA19
         CxKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AlK4HlvU;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=11J3BIJYsL/dUdAlvvDpTLxGSIcrIzejJLa+44aplAU=;
        b=ZCyXqzak8zV4hKaCGi2+5HqW205I7nkEgnXuzcFZrHSZvR9KlOleDxnVIyHzJA5CoD
         1moQ0RdYn7hcoZgTnvIYjnzUlvVzYvGtdo+UFjg6TN1Hz3nK15zvZJNkSlOcy36+fx7R
         88ErnQqp9AUcGrJ+lrzlLSHM/MCrfy0sx8/iMMlyIs1neo2h+0joh42WsLZbmISGuX5O
         eexHNKnR/OBYb1GQy3HsfQyn0hkcydNozzlWY7WsiTNp9FBCXvkhdC5VTfBAK7LlhQpr
         91u/hci0TJ/3hNq7Qojl/aqo9sGPWGpU8HrhongqVL+Y8WDAwlfbaK0tyZZalA33Cm6P
         4jKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=11J3BIJYsL/dUdAlvvDpTLxGSIcrIzejJLa+44aplAU=;
        b=kDdLlaJqZMw81Y+rjvmaKVB7NC3KA9fmhF1Bb1Z6kag2DlWlqDFwDBJOYBKVqgI+Wg
         GgksU4lfzEZUJtzOhu21rkGtMwQZddfxLi6BS8DNnF5SJB0qHjfBE8qA6bZ4FsGiVzq7
         YkKtRObMJhoyVfzKvIUe0ht6F9YrM/5gpxtgrgVBxSEcqa8KvnE2yFKwwjsY5Br+jV+Q
         uwCGxZ/YJhrQqHnjPNPs4ieqzDts3nhwX27uJB1uvODaNX/G2l9nzGaDf6hkAr2si2mZ
         YlFelXGpCKDYVubbMCg1UYXfwKFbiKcAG3LN510RTHUXHMEl7ltpgVtIB0lVmo6VAAqg
         sWPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBWDvWYeqgSa9Ck47l7P7f8DBiOajgkanqfryozenNdj84sLPC
	l4Aqxq3hqJ8/sDGuhtVFoqE=
X-Google-Smtp-Source: APXvYqye9vlqFZYZTS+fEREuY/RVSV34aJvSA7yXIc+r3fVzNifJeOKVk4Vh0zIn9y4BDcUhZpKU8w==
X-Received: by 2002:a5d:4446:: with SMTP id x6mr6778669wrr.312.1580315494977;
        Wed, 29 Jan 2020 08:31:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c3d1:: with SMTP id d17ls74104wrg.10.gmail; Wed, 29 Jan
 2020 08:31:34 -0800 (PST)
X-Received: by 2002:adf:f802:: with SMTP id s2mr38397932wrp.201.1580315494471;
        Wed, 29 Jan 2020 08:31:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580315494; cv=none;
        d=google.com; s=arc-20160816;
        b=h0T3lw7C2312M8NNxVtUJ43MuAkTXjtnz9x8dYfVEQVqvhVGncvuD1eTPyAYnOgI6g
         IiQ4He9mZYZnFGFfbuTDrUSsg8THTXfd+gcU7FJRn1gzoxTGp1AYFeE31+dwJdH+ewqh
         LwHNhDqaHCrElV+Uq6pnOG1U4E2FF/LkgMLloUl6zk3Q3DJ1+/vSVuowlyThuS8NqzAN
         rimuUwaH7uVQpX14XgpqQYTsT0Sy5gROecL1CFUSwYXCP6s9gEM8u88WuP52u3/9FY3J
         bgEOsC3boIhyxrlz3rZRgYDZIXaEe7XvntkLvQ+Yzz+JUer9UgKUpshZijUHKfBF3MwF
         Y3qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=jKGa71M7FPa2yN7IGEDv4Qj9XANKqqrbpXfbeDkLG/U=;
        b=V2nqn/ZxaXQyqwnfF0utduqVjWZb0OgDsMNZypzWtMOeuuPC38rnmVTATrUWrsCGjt
         NZJzQ4NSINkPdK7p32Q72V0uw++SDz4yOgX/R8eTE4r47ceN9U4DVNZFYBJ8R3tQikmg
         XvkV4ay2k5FgvD15nZo/a4IpOD/ZWvNPJJbmRpcTqavaILsngfjx4JrESM4X+J4UYEbQ
         JygFjP+hLxHMya3mOo099ICNoZBiuaHQLEJi355gzGPfOBZUrVBk989VR4YupI6M0DZa
         QmabDTwm7FOfNRK3elGDzkRTFOIhUyAgstGld0i1A/Iq1XcAQ6GT68M+TH4AGilBR3v6
         ACow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AlK4HlvU;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t131si86390wmb.1.2020.01.29.08.31.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 08:31:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id g1so373170wmh.4
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 08:31:34 -0800 (PST)
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr67087wma.5.1580315493980;
        Wed, 29 Jan 2020 08:31:33 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id o4sm3493865wrx.25.2020.01.29.08.31.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Jan 2020 08:31:33 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 29 Jan 2020 16:31:32 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1540998354.1980.1580315493448.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allmodconfig - Build # 28 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1979_365202574.1580315492685"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=AlK4HlvU;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343
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

------=_Part_1979_365202574.1580315492685
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-mainline-allyesconfig
 - tcwg_kernel/gnu-release-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Culprit:
<cut>
commit 7786a1af2a6bceb07860ec720e74714004438834
Author: Niu Xilei <niu_xilei@163.com>

    pktgen: Allow configuration of IPv6 source address range
</cut>

First few errors in logs of first_bad:
00:04:27 make[1]: *** [__modpost] Error 1
00:04:27 make: *** [modules] Error 2
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/artifact/artifacts/build-7786a1af2a6bceb07860ec720e74714004438834/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/artifact/artifacts/build-a4d35e77357c72acd52d6b1e7093b750b384b7cc/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/

Reproduce builds:
<cut>
mkdir investigate-linux-7786a1af2a6bceb07860ec720e74714004438834
cd investigate-linux-7786a1af2a6bceb07860ec720e74714004438834

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/28/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1540998354.1980.1580315493448.JavaMail.javamailuser%40localhost.

------=_Part_1979_365202574.1580315492685--
