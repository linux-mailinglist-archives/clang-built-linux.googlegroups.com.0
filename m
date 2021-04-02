Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD7MTWBQMGQEGYE7DMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F69352FF3
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 21:52:49 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id k21sf1429612uag.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 12:52:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617393168; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUQzrswLA5IiclxSwIS8xPbjTtL5bcr8Ksnmldbfdc4jfDt9oN0/0v3nopsfrvuGn1
         1+MlJOjFHLVLkvrF+5PbsKOQp/+R4vAE1HnhtDiuJ/268w7D66+y+NN+1aE7cHjfBa5D
         LaPOCwOAcDzxlLQIVF76qSR2SxdYNWMDRaXd6edexpsvCybJq5gvmRPO60PERYSNB1w7
         EqKsRhn33CWnvGG9d7euwxkn35ZoswueMuRUBUs+/PcZHAdHAPeiJEiu6S2Tab6YROvG
         v/Wc6r+7pC31AZ8bpc6lcsNqH1uOXYVmi0vSKhAghVXNMZMvS4Tjlu7rgOi/lrRJSOjq
         GlDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=EXwowYk9ffpEOhhFVk8LASBWkEaxtIiFJNnV03X2emg=;
        b=W65QGD//Tg3KbPPRW7bMQJXKWYNs50QLPgzVJBrwoTFvCGpukDfLLLRfG6EaYZsAoZ
         liCJ6xilNbNH3OhZcgDmyLwSefVxMolKYIDS2iUB056QBS/ErUtX6asRLOTYG/LicjET
         rmrHXj/drIg+u5GZLKCrWzbbDX/gIsfPOWFn+Jy5t0Hev9+xV9EKWl2gpLBYE5T0dFyN
         TQRRHs2sdyRzPnKRM+bbmc7k3upsu6FiBddJ1BViLafX7JQvjcCkDuvZ+O2Bq+3TpWwP
         F5uIKXfwBbXow28o/q2KprLcJp42xw3+E69ioQGtr4XcC1N9eD23KB1Rp1dvnyteXmSe
         ZcIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nl0TS3px;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EXwowYk9ffpEOhhFVk8LASBWkEaxtIiFJNnV03X2emg=;
        b=UuRtKOod4EjY3wMKdGt5FRAYbLvxCbBhFHICu3bTP+zp6FWUHSou8BF/NOC8qp0eXz
         y80Qek8F6tx2fBJcXVoerQVjoH2OKv6DMfqmlBfwGlFKsDyg/uJRceKggiihfPNOLBwy
         b9aQTDN8rursWcNLs/98cv+LvVx6AXKkLM+0+8m8ypTyvq1I5lg5yA+33hnwh+k3uf1d
         jOiXMc/m4DqQKa7RhQk7clbyenYGLF/YTtYAuRouEfcUblBBmwbb//qdtD2BAuTx7MTh
         Z4lOXaKycMpn0nVMMqYql/vycLkrdgv3hEuav/pC8XwOmVZdEaVm1t7FvesMWF66/XsR
         fFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXwowYk9ffpEOhhFVk8LASBWkEaxtIiFJNnV03X2emg=;
        b=E4wLLOqnzptGBj4Y6ohb88Rx+3k51/sx3zPvkADmvXpsDhBGKlDr+PNGMU36E1ylro
         7EhBvRXzhhGqr50qb3hZo6nDfMkjbsqRYB1OxZ0D6wNTmlFhEdyUz8tvnWZCDStmdajH
         II3V60Ihq9DGe4LxZd1aFono+Nt22O5D+phqDbhW9WgnGPf2A+v88aCqmZeHpi7PpnBK
         FEjlapQd8diR+fYkqHGTtap0NlTozj3GagsxoxfN7ZxGVnjP1+4osoIZeLSBI2sfRg+n
         9ooaes4Pn3/7YOFntDNcYKk/yeSyvVAwxnWN3+q7vA7QgtapqvU1n75wWGZiBp9SbwXC
         pU5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zvfoxYW+48pgGSMGhmUN+2Zz1ZVg08oncBjdLOFNwJKDWVPsR
	0kr0fLtvH0mZMQ1fbj0wjZk=
X-Google-Smtp-Source: ABdhPJwBhhCoae9BF1PPMRMTlgBhZsJRs/a0aBYUVFgx0OG6Y+3yAWTgK9BKk8fVf+eYhfcYjMPB9g==
X-Received: by 2002:a1f:1f4a:: with SMTP id f71mr10212579vkf.7.1617393168079;
        Fri, 02 Apr 2021 12:52:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3b93:: with SMTP id p19ls768983uaw.8.gmail; Fri, 02 Apr
 2021 12:52:47 -0700 (PDT)
X-Received: by 2002:ab0:264d:: with SMTP id q13mr9664083uao.3.1617393167562;
        Fri, 02 Apr 2021 12:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617393167; cv=none;
        d=google.com; s=arc-20160816;
        b=vFdntNAvxrU04vRqRrXp/6QrYYgn+PA0R24RPnZy39PX2jSHmkMtJhhFKuy+gzBjzy
         k1wBJ89kOQlai9dB+RBna8FJ8OQQYN/TZm9NXiFxtxa6OgUHPt6OCWQ98HY/vEVi/JTi
         T1gWfV2mFqiGsjmW3oOonq/LpF53viGNUXGxMHpcCHx1dZeczbxC2tbBFFY8MGKkjD62
         2S1+JPjTLIk4YqbQCJ9PSLnG9v2+pWurzrTT96gNKopzzY59wFkbYR+xC1v4BoUeONje
         4++XN083mdNabbgbV/7hO13ahaNHXC64igfb4ZuWpkR3BwXr01H6rcV0vafda0VuJeIa
         GYZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=3TUUMIzvNLhf440wDeQCJ154kMw9NoF36lLG1qfFQzg=;
        b=y7aXQP5xCv1itw3QmGUUnbx9dxWs3AuXS0NFtCJpedn0dZYNLPQXhEsb828m6pm1fS
         gJ4DV3N3BzfVTo64mklLXIGkKcF76Ja2VF+rqaRwQmmoAOUeMRgKfzgY5dwdjA2/4KP7
         pSfJok6C+pqPxc7jWHvufnGLGl8L+TLdUZsXvMe/pM4nKPSEDR8AHASv1UpZJqclQre7
         chZmN6oZS8CcBrvDQcWjDnWDLtbW/JjKcUVCLuLA69Y2Dw2x/eufyBzHUP7CqHziWrar
         /WIw0sCVI087sOY69NvYRPjEL2g9bDHWx/LlywrMXJ688IjkG6lYZprR0n+M6jX2azAd
         N5rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nl0TS3px;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d23si388110vsq.1.2021.04.02.12.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 12:52:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ADF1D6113C;
	Fri,  2 Apr 2021 19:52:44 +0000 (UTC)
Date: Fri, 2 Apr 2021 12:52:41 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>
Cc: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nl0TS3px;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Hi all,

I am testing the Clang Control Flow Integrity series that is being
worked on right now [1] and I encounter a violation in the Infiniband
sysfs core (drivers/infiniband/core/sysfs.c) on an arm64 server with mlx5:

$ cat /sys/class/infiniband/mlx5_bond_0/ports/1/hw_counters/lifespan
12

$ echo "10" | sudo tee /sys/class/infiniband/mlx5_bond_0/ports/1/hw_counters/lifespan
10

$ sudo dmesg
[64198.670342] ------------[ cut here ]------------
[64198.670362] CFI failure (target: show_stats_lifespan+0x0/0x8 [ib_core]):
[64198.671291] WARNING: CPU: 20 PID: 15786 at kernel/cfi.c:29 __ubsan_handle_cfi_check_fail+0x58/0x60
[64198.671336] Modules linked in: binfmt_misc nls_iso8859_1 dm_multipath
scsi_dh_rdac scsi_dh_emc scsi_dh_alua ast drm_vram_helper drm_ttm_helper
ttm aes_ce_blk crypto_simd drm_kms_helper cryptd cec rc_core
aes_ce_cipher crct10dif_ce sysimgblt ghash_ce syscopyarea sysfillrect
acpi_ipmi sha2_ce fb_sys_fops ipmi_ssif sha256_arm64 ipmi_devintf
sha1_ce drm efi_pstore sbsa_gwdt tcp_westwood evbug ipmi_msghandler
cppc_cpufreq xgene_hwmon ib_iser rdma_cm iw_cm ib_cm iscsi_tcp
libiscsi_tcp libiscsi scsi_transport_iscsi bonding ip_tables x_tables
autofs4 raid10 raid456 libcrc32c async_raid6_recov async_pq raid6_pq
async_xor xor xor_neon async_memcpy async_tx raid1 raid0 multipath
linear mlx5_ib ib_uverbs ib_core mlx5_core mlxfw igb i2c_algo_bit tls
i2c_xgene_slimpro ahci_platform gpio_dwapb
[64198.671958] CPU: 20 PID: 15786 Comm: cat Tainted: G        W         5.12.0-rc5+ #5
[64198.671980] Hardware name: Lenovo HR330A            7X33CTO1WW    /HR350A     , BIOS HVE104D-1.02 03/08/2019
[64198.671993] pstate: 60400005 (nZCv daif +PAN -UAO -TCO BTYPE=--)
[64198.672016] pc : __ubsan_handle_cfi_check_fail+0x58/0x60
[64198.672036] lr : __ubsan_handle_cfi_check_fail+0x58/0x60
[64198.672054] sp : ffff800014ea3b50
[64198.672065] x29: ffff800014ea3b50 x28: ffff80001122da60 
[64198.672095] x27: ffff80001122ad80 x26: ffff800011233088 
[64198.672122] x25: ffff000801821a78 x24: ffff000820cda200 
[64198.672148] x23: ffff800009aa9f60 x22: ffff800009a66000 
[64198.672173] x21: 7dac81f92e1d85cf x20: ffff800009abddd0 
[64198.672198] x19: ffff800009a69fd8 x18: ffffffffffffffff 
[64198.672223] x17: 0000000000000000 x16: 0000000000000000 
[64198.672250] x15: 0000000000000004 x14: 0000000000001fff 
[64198.672277] x13: ffff8000121412a8 x12: 0000000000000003 
[64198.672303] x11: 0000000000000000 x10: 0000000000000027 
[64198.672329] x9 : 4568e3af67e9f000 x8 : 4568e3af67e9f000 
[64198.672356] x7 : 6e6170736566696c x6 : ffff8000124699c9 
[64198.672381] x5 : 0000000000000000 x4 : 0000000000000001 
[64198.672406] x3 : 0000000000000000 x2 : 0000000000000000 
[64198.672431] x1 : ffff8000119b905d x0 : 000000000000003c 
[64198.672457] Call trace:
[64198.672469]  __ubsan_handle_cfi_check_fail+0x58/0x60
[64198.672489]  __cfi_check_fail+0x3c/0x44 [ib_core]
[64198.673362]  __cfi_check+0x2e78/0x31b0 [ib_core]
[64198.674230]  port_attr_show+0x88/0x98 [ib_core]
[64198.675098]  sysfs_kf_seq_show+0xc4/0x160
[64198.675131]  kernfs_seq_show+0x5c/0xa4
[64198.675157]  seq_read_iter+0x178/0x60c
[64198.675176]  kernfs_fop_read_iter+0x78/0x1fc
[64198.675202]  vfs_read+0x2d0/0x34c
[64198.675220]  ksys_read+0x80/0xec
[64198.675237]  __arm64_sys_read+0x28/0x34
[64198.675253]  el0_svc_common.llvm.13467398108545334879+0xbc/0x1f0
[64198.675277]  do_el0_svc+0x30/0xa4
[64198.675293]  el0_svc+0x30/0xb0
[64198.675314]  el0_sync_handler+0x84/0xe4
[64198.675333]  el0_sync+0x174/0x180
[64198.675351] ---[ end trace a253e31759778f5c ]---
[64216.024673] ------------[ cut here ]------------
[64216.024678] CFI failure (target: set_stats_lifespan+0x0/0x8 [ib_core]):
[64216.024824] WARNING: CPU: 3 PID: 15816 at kernel/cfi.c:29 __ubsan_handle_cfi_check_fail+0x58/0x60
[64216.024832] Modules linked in: binfmt_misc nls_iso8859_1 dm_multipath
scsi_dh_rdac scsi_dh_emc scsi_dh_alua ast drm_vram_helper drm_ttm_helper
ttm aes_ce_blk crypto_simd drm_kms_helper cryptd cec rc_core
aes_ce_cipher crct10dif_ce sysimgblt ghash_ce syscopyarea sysfillrect
acpi_ipmi sha2_ce fb_sys_fops ipmi_ssif sha256_arm64 ipmi_devintf
sha1_ce drm efi_pstore sbsa_gwdt tcp_westwood evbug ipmi_msghandler
cppc_cpufreq xgene_hwmon ib_iser rdma_cm iw_cm ib_cm iscsi_tcp
libiscsi_tcp libiscsi scsi_transport_iscsi bonding ip_tables x_tables
autofs4 raid10 raid456 libcrc32c async_raid6_recov async_pq raid6_pq
async_xor xor xor_neon async_memcpy async_tx raid1 raid0 multipath
linear mlx5_ib ib_uverbs ib_core mlx5_core mlxfw igb i2c_algo_bit tls
i2c_xgene_slimpro ahci_platform gpio_dwapb
[64216.024922] CPU: 3 PID: 15816 Comm: tee Tainted: G        W         5.12.0-rc5+ #5
[64216.024925] Hardware name: Lenovo HR330A            7X33CTO1WW    /HR350A     , BIOS HVE104D-1.02 03/08/2019
[64216.024927] pstate: 60400005 (nZCv daif +PAN -UAO -TCO BTYPE=--)
[64216.024931] pc : __ubsan_handle_cfi_check_fail+0x58/0x60
[64216.024933] lr : __ubsan_handle_cfi_check_fail+0x58/0x60
[64216.024936] sp : ffff800015433bf0
[64216.024938] x29: ffff800015433bf0 x28: ffff000808a00000 
[64216.024942] x27: 0000000000000000 x26: 0000000000000000 
[64216.024945] x25: ffff0008062e5000 x24: ffff000808a00000 
[64216.024949] x23: ffff000825ba9600 x22: ffff800009a66000 
[64216.024952] x21: 6d3b10b5d517da5b x20: ffff800009abddf0 
[64216.024956] x19: ffff800009a69fb8 x18: ffffffffffffffff 
[64216.024959] x17: 0000000000000000 x16: 0000000000000000 
[64216.024962] x15: 0000000000000004 x14: 0000000000001fff 
[64216.024966] x13: ffff8000121412a8 x12: 0000000000000003 
[64216.024969] x11: 0000000000000000 x10: 0000000000000027 
[64216.024973] x9 : 4568e3af67e9f000 x8 : 4568e3af67e9f000 
[64216.024976] x7 : 2b6e617073656669 x6 : ffff8000124699c8 
[64216.024979] x5 : 0000000000000000 x4 : 0000000000000001 
[64216.024983] x3 : 0000000000000000 x2 : 0000000000000000 
[64216.024986] x1 : ffff8000119b905d x0 : 000000000000003b 
[64216.024990] Call trace:
[64216.024992]  __ubsan_handle_cfi_check_fail+0x58/0x60
[64216.024995]  __cfi_check_fail+0x3c/0x44 [ib_core]
[64216.025133]  __cfi_check+0x2e78/0x31b0 [ib_core]
[64216.025277]  port_attr_store+0x5c/0x90 [ib_core]
[64216.025422]  sysfs_kf_write+0x70/0xd0
[64216.025428]  kernfs_fop_write_iter+0x110/0x1dc
[64216.025431]  vfs_write+0x364/0x46c
[64216.025435]  ksys_write+0x80/0xec
[64216.025437]  __arm64_sys_write+0x28/0x34
[64216.025439]  el0_svc_common.llvm.13467398108545334879+0xbc/0x1f0
[64216.025443]  do_el0_svc+0x30/0xa4
[64216.025445]  el0_svc+0x30/0xb0
[64216.025450]  el0_sync_handler+0x84/0xe4
[64216.025452]  el0_sync+0x174/0x180
[64216.025455] ---[ end trace a253e31759778f5d ]---

According to the call trace, sysfs_kf_seq_show() calls port_attr_show()
because that is the show() member of port_sysfs_ops and port_attr_show()
calls show_stats_lifespan() via an indirect call (port_attr->show()).
The show() member of 'struct port_attribute' is:

ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf);

but show_stats_lifespan() is defined to be the show() member of
'struct hw_stats_attribute', which is of type

ssize_t (*show)(struct kobject *kobj, struct attribute *attr, char *buf);

so there is a mismatch and the CFI code warns about it. The store
functions have the same issue as you can see above.

I have been trying to work my way through the code in order to suggest a
solution and I am getting lost hence my report. I think the issue is
that the hw_counters folder in sysfs is a 'struct attribute_group',
which gets added underneath the 'struct ib_ports' kobj in add_port(),
meaning that it inherits the sysfs ops from the 'struct ib_ports' kobj,
which are port_attr_{show,store}(). Initially, I though that
'struct hw_stats_attribute' could just be converted over to
'struct port_attribute' but it seems 'struct hw_stats_attribute' does
not have to be used underneath 'struct ib_port', it can be underneath
'struct ib_device', where 'struct port_attribute' is not going to be
relevant. It seems to me that the hw_counters 'struct attribute_group'
should probably be its own kobj within both of these structures so they
can have their own sysfs ops (unless there is some other way to do this
that I am missing).

I would appreciate someone else taking a look and seeing if I am off
base or if there is an easier way to solve this.

If you would like to test locally, you will need clang-12 or newer and
the CFI series. The current series that is currently being reviewed only
supports arm64 but x86_64 is available through Sami's GitHub [2]. If you
do not have easy access to clang-12 through your distribution's package
manager or you don't want to bother with it, I maintain an LLVM build
script [3] that can easily produce a usable one for you entirely self
contained:

# To see the various options available in case you need to use any of them
$ ./build-llvm.py -h

# Build the 12.0.0 branch instead of main
$ ./build-llvm.py --branch "release/12.x"

See the README in the repo for more information on dependencies and
such.

To build with CFI, export the tc-build installation bin folder to your
PATH if you used it, enable some configs (assuming you have an existing working
config), and let it rip:

$ scripts/config \
    -d KASAN \
    -d GCOV_KERNEL \
    -d LTO_NONE \
    -e LTO_CLANG_THIN \
    -e CFI_CLANG \
    -e CFI_PERMISSIVE

$ make -skj"$(nproc)" LLVM=1 LLVM_IAS=1 olddefconfig all

[1]: https://lore.kernel.org/r/20210401233216.2540591-1-samitolvanen@google.com/
[2]: https://github.com/samitolvanen/linux/commits/clang-cfi
[3]: https://github.com/ClangBuiltLinux/tc-build

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402195241.gahc5w25gezluw7p%40archlinux-ax161.
