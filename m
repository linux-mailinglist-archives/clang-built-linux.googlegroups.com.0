Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZF3S2EQMGQEBNVDELQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C1A3F6D21
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 03:33:26 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id y9-20020a655b09000000b0025259fdb7e7sf13175919pgq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 18:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629855205; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0kTmGSTS0VGtQdxQJwdzh2/NgGPw6lQVxSAhSGoAS9qnqm3d4rba1AoDzIEwC6a0Q
         pbUtUB/9iGTHeAHgki7Vn1lK9/gYfAy1Xlsr50auwbu2X0Lq16u7jGEtFdxbeZ7GHYuR
         uTS/ULoOBBIsCOlbBi8AokWZJfCXfG8IEzDM/VJmmEQveCi12QtTP55lGkzYUGMw7CWX
         OpqaM6ob11f4rz4nzaAV2Sj0+SMRoNNiBSNfnbQ26aBpW3eQxce6wr2+S/GfwCvdN2im
         1ffsdaQy4r1sDXlk7SgPrus5l0nKKS/LU6f32eR3w/6KFL91nULE/ZPG9hQWd3L8LVk7
         Qdvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mC9zaGI7z0fNM9Fv7iI6UzqUfzhsEaV8D6Ix9dyeWgk=;
        b=RNP0X6ebcQEc3g5JZzqoW7uCNSms5V7pgt15qGboskBr1uj3Z/z6qLZkRn9tibNHE1
         YiCco62fB2wQ8CQUXx5ADYLOaphE23qrEY8Oc6WWvC3W1U8K3o6AAI1jqOt0WhszsKSd
         8VhnBCFgKOoK5chvUOQC3juRdu2lCHx/2kAMTikLxEEjnU8KuvTF8lpwyDr2kOMzDKdG
         afAXez2OHbHXEv1IFyqqz3kM/GwLgOplEpzC3msecDrxYufO5MM9As2OgQJt5AHxpj+N
         4GwmT29acprhkeyKycRdCSqNiUGFlkpiaMj5mP6EUWgYofLOrvZ2o9s8uJHBdK38edg7
         AKIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mC9zaGI7z0fNM9Fv7iI6UzqUfzhsEaV8D6Ix9dyeWgk=;
        b=SE69P5RB6iPSszxzxox8vawS2QR+rTYShBCNqomisKrPNqlndkT9PI8UzRVBZu5ucr
         e3FU9OA/ryACIgxsvp/+GGXL4ezmK2iUacdTqLO9T+0YqLrcAVbVZgau9nAKJzckThGk
         hjccR3SOOY9qaLfYEN09nn5aQelK9fB33jIwd9ZfGNDHmGfZfXNQ2UwExSckLPR/uISp
         uIRCMhif9wDBbK7hzqHOH9eHZLQz0rOKokw4qcJFgmM4NFY4yFtimo+uT+AqiZrHuTxo
         d8x9b+gW3Y3w8t1aB7NcLnSSRkRWTUzq6UUeOUlaY0iPrsKRDwgCaKzqf0cBCIl6ZIcl
         KUfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mC9zaGI7z0fNM9Fv7iI6UzqUfzhsEaV8D6Ix9dyeWgk=;
        b=mS6j+WRh1oLa8Y73lf9phK2Cpu5Da4OT+zD1sx6atLl9b6JEMJBKhOjEr72ABYH6kg
         Kf6H0Zl3dgR1MwQ8lhUqRva9Zait82j64ewlAm1feKBmYWEkq1t5CAA9CggLnTVs6XAp
         jkavojwtj44AwDsgdTisKhiJ15Opa4ZovvAZUdCwnnzSUKiU1qsYBONWi4ymybHj7Dtb
         us+73AwGIiYRPfeXHHeBvFVMdC9qrzZDAEQRLVqVjwSPRPjJ5PGQ+DJf5zH/Un8vNSkv
         uNWZ/zJUicVcArqJcpPkOD+SQwZBSs6nwtjs7Tk1HFbAHcEgBzURvVztNrBVVOSiw+0p
         v6SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zE23dPPoIw9Bh7V+mu/2xg1pr5Tt+RS6kX4Qc+WerZx9wp65K
	5Tz+CqXzsHnZoF1aH52xCN8=
X-Google-Smtp-Source: ABdhPJy4UNU/kWEpbAAW4FR4HVwZ++he4VSfjmJYPvv28wBradZUrWs2NE2kyGnVmu+uOTopyLFWEQ==
X-Received: by 2002:a17:902:bf09:b029:12c:d762:96c with SMTP id bi9-20020a170902bf09b029012cd762096cmr35575207plb.15.1629855204835;
        Tue, 24 Aug 2021 18:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls320216plh.8.gmail; Tue, 24
 Aug 2021 18:33:24 -0700 (PDT)
X-Received: by 2002:a17:902:6949:b029:12c:591a:2ed7 with SMTP id k9-20020a1709026949b029012c591a2ed7mr36040894plt.14.1629855203925;
        Tue, 24 Aug 2021 18:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629855203; cv=none;
        d=google.com; s=arc-20160816;
        b=GT1tsEwFidqEXQYwtV3khMxB4YJ9gV1ioxpzQOH9HDN+d9VtxXw9K+txBXI7HHgUJf
         UJxaUTdqcBwnjhPuhy0A6Am+CMmjXvm9/iPE1J1+ZtPgDQh+6Pxc9/Hvb2tfeNx6mKKA
         eyayGWiej4AWC3Ecn4Stu7H3mF50XYJveT/wBkFNnMPJI3bBu5Kh+bgvB+pZCK3O4K5o
         MPAfjpAlPiyNq/Y2VDtz4AeKFP9W8X98Q9exR4FQTn8kNDvKR1QAJ7vnVtsLff+xIn8r
         o6uNdN13CJlrg4w7p7vQ8sBc45KL6q5e0BRfNgpJPS2Szo2c/LP3O847e7iXSe/tU6ZM
         peMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7avaz0bVYchy5KRax5tFlEntTVdoX2tQqs2UzKybT1g=;
        b=VrK5wPI5jHpptHEQApwXmOvfE1OGaE9LFLJsf95WCLtFYujo3KLMulMTsgCajv2hbv
         7mDDBkxwcc9MSgsJ5aca2i+11Pv77bj3qwkMnqZELKLs6fP397B3GFk0WMTMByWZVeoZ
         CeXaE7HZrfRuK18V7UgJq+t87yXRqyuLsKj40iR1PJO++qQydCU8t//BfSsS3ORv7+82
         D+inKGxAHiek6Xg3R0N79E/iYDiRruPbmE/kaitKTjp0GmTsD0ehlKVMSRmNASqcHvJa
         Nu8IEgeBvxOu+kGgrM7PaTaFLaYsZF87rGH8DcaWlir7KF3v5kLQqD/3IPb88er+Abs1
         ObAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id 136si126779pfz.2.2021.08.24.18.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 18:33:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="214305804"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; 
   d="gz'50?scan'50,208,50";a="214305804"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 18:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; 
   d="gz'50?scan'50,208,50";a="685891993"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 24 Aug 2021 18:33:20 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIhn6-00010y-8N; Wed, 25 Aug 2021 01:33:20 +0000
Date: Wed, 25 Aug 2021 09:32:42 +0800
From: kernel test robot <lkp@intel.com>
To: Jeff Layton <jlayton@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [jlayton:ceph-fscrypt-size 38/40] fs/ceph/caps.c:4058:2: error:
 expression is not assignable
Message-ID: <202108250935.jW3iXlhl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux.git ceph-fscrypt-size
head:   a17ec2cafbd2fc0e04e8787810bec64849190db2
commit: 43bdcb97d537c60bc43663c0219a76701332618e [38/40] ceph: handle fscrypt fields in cap messages from MDS
config: i386-randconfig-a012-20210824 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux.git/commit/?id=43bdcb97d537c60bc43663c0219a76701332618e
        git remote add jlayton https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux.git
        git fetch --no-tags jlayton ceph-fscrypt-size
        git checkout 43bdcb97d537c60bc43663c0219a76701332618e
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=i386 SHELL=/bin/bash fs/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   clang-14: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]
   In file included from fs/ceph/caps.c:4:
   In file included from include/linux/fs.h:6:
   In file included from include/linux/wait_bit.h:8:
   In file included from include/linux/wait.h:9:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:60:
   arch/x86/include/asm/thread_info.h:172:13: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
           oldframe = __builtin_frame_address(1);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/thread_info.h:174:11: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
                   frame = __builtin_frame_address(2);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/ceph/caps.c:13:
   In file included from fs/ceph/super.h:22:
   In file included from include/linux/ceph/libceph.h:24:
   In file included from include/linux/ceph/osd_client.h:14:
   In file included from include/linux/ceph/osdmap.h:7:
   include/linux/ceph/decode.h:236:33: warning: taking address of packed member 'in_addr' of class or structure 'ceph_entity_addr' may result in an unaligned pointer value [-Waddress-of-packed-member]
           __be16 ss_family = *(__be16 *)&a->in_addr.ss_family;
                                          ^~~~~~~~~~~~~~~~~~~~
   In file included from fs/ceph/caps.c:13:
   In file included from fs/ceph/super.h:29:
   fs/ceph/crypto.h:6:2: error: unterminated conditional directive
   #ifndef _CEPH_CRYPTO_H
    ^
   In file included from fs/ceph/caps.c:16:
   fs/ceph/crypto.h:6:2: error: unterminated conditional directive
   #ifndef _CEPH_CRYPTO_H
    ^
>> fs/ceph/caps.c:4058:2: error: expression is not assignable
           ceph_decode_32_safe(p, end, &len, bad);
           ^                           ~~~~
   include/linux/ceph/decode.h:71:5: note: expanded from macro 'ceph_decode_32_safe'
                   v = ceph_decode_32(p);                          \
                   ~ ^
   fs/ceph/caps.c:4061:2: error: expression is not assignable
           ceph_decode_32_safe(p, end, &len, bad);
           ^                           ~~~~
   include/linux/ceph/decode.h:71:5: note: expanded from macro 'ceph_decode_32_safe'
                   v = ceph_decode_32(p);                          \
                   ~ ^
>> fs/ceph/caps.c:4189:43: error: passing 'struct cap_extra_info *' to parameter of incompatible type 'struct cap_extra_info'; remove &
                   int ret = parse_fscrypt_fields(&p, end, &extra_info);
                                                           ^~~~~~~~~~~
   fs/ceph/caps.c:4053:76: note: passing argument to parameter 'extra' here
   static int parse_fscrypt_fields(void **p, void *end, struct cap_extra_info extra)
                                                                              ^
   fs/ceph/caps.c:4640:15: error: implicit declaration of function 'ceph_encode_encrypted_fname' [-Werror,-Wimplicit-function-declaration]
                           int ret2 = ceph_encode_encrypted_fname(dir, dentry, *p);
                                      ^
   fs/ceph/caps.c:4640:15: note: did you mean 'ceph_encode_dentry_release'?
   fs/ceph/caps.c:4604:5: note: 'ceph_encode_dentry_release' declared here
   int ceph_encode_dentry_release(void **p, struct dentry *dentry,
       ^
   3 warnings and 6 errors generated.


vim +4058 fs/ceph/caps.c

  4027	
  4028	#ifdef CONFIG_FS_ENCRYPTION
  4029	static int parse_fscrypt_fields(void **p, void *end, struct cap_extra_info *extra)
  4030	{
  4031		u32 len;
  4032	
  4033		ceph_decode_32_safe(p, end, extra->fscrypt_auth_len, bad);
  4034		if (extra->fscrypt_auth_len) {
  4035			ceph_decode_need(p, end, extra->fscrypt_auth_len, bad);
  4036			extra->fscrypt_auth = kmalloc(extra->fscrypt_auth_len, GFP_KERNEL);
  4037			if (!extra->fscrypt_auth)
  4038				return -ENOMEM;
  4039			ceph_decode_copy_safe(p, end, extra->fscrypt_auth,
  4040						extra->fscrypt_auth_len, bad);
  4041		}
  4042	
  4043		ceph_decode_32_safe(p, end, len, bad);
  4044		if (len == sizeof(u64))
  4045			ceph_decode_64_safe(p, end, extra->fscrypt_file_size, bad);
  4046		else
  4047			ceph_decode_skip_n(p, end, len, bad);
  4048		return 0;
  4049	bad:
  4050		return -EIO;
  4051	}
  4052	#else
  4053	static int parse_fscrypt_fields(void **p, void *end, struct cap_extra_info extra)
  4054	{
  4055		u32 len;
  4056	
  4057		/* Don't care about these fields unless we're encryption-capable */
> 4058		ceph_decode_32_safe(p, end, &len, bad);
  4059		if (len)
  4060			ceph_decode_skip_n(p, end, len, bad);
> 4061		ceph_decode_32_safe(p, end, &len, bad);
  4062		if (len)
  4063			ceph_decode_skip_n(p, end, len, bad);
  4064		return 0;
  4065	bad:
  4066		return -EIO;
  4067	}
  4068	#endif
  4069	
  4070	/*
  4071	 * Handle a caps message from the MDS.
  4072	 *
  4073	 * Identify the appropriate session, inode, and call the right handler
  4074	 * based on the cap op.
  4075	 */
  4076	void ceph_handle_caps(struct ceph_mds_session *session,
  4077			      struct ceph_msg *msg)
  4078	{
  4079		struct ceph_mds_client *mdsc = session->s_mdsc;
  4080		struct inode *inode;
  4081		struct ceph_inode_info *ci;
  4082		struct ceph_cap *cap;
  4083		struct ceph_mds_caps *h;
  4084		struct ceph_mds_cap_peer *peer = NULL;
  4085		struct ceph_snap_realm *realm = NULL;
  4086		int op;
  4087		int msg_version = le16_to_cpu(msg->hdr.version);
  4088		u32 seq, mseq;
  4089		struct ceph_vino vino;
  4090		void *snaptrace;
  4091		size_t snaptrace_len;
  4092		void *p, *end;
  4093		struct cap_extra_info extra_info = {};
  4094		bool queue_trunc;
  4095	
  4096		dout("handle_caps from mds%d\n", session->s_mds);
  4097	
  4098		/* decode */
  4099		end = msg->front.iov_base + msg->front.iov_len;
  4100		if (msg->front.iov_len < sizeof(*h))
  4101			goto bad;
  4102		h = msg->front.iov_base;
  4103		op = le32_to_cpu(h->op);
  4104		vino.ino = le64_to_cpu(h->ino);
  4105		vino.snap = CEPH_NOSNAP;
  4106		seq = le32_to_cpu(h->seq);
  4107		mseq = le32_to_cpu(h->migrate_seq);
  4108	
  4109		snaptrace = h + 1;
  4110		snaptrace_len = le32_to_cpu(h->snap_trace_len);
  4111		p = snaptrace + snaptrace_len;
  4112	
  4113		if (msg_version >= 2) {
  4114			u32 flock_len;
  4115			ceph_decode_32_safe(&p, end, flock_len, bad);
  4116			if (p + flock_len > end)
  4117				goto bad;
  4118			p += flock_len;
  4119		}
  4120	
  4121		if (msg_version >= 3) {
  4122			if (op == CEPH_CAP_OP_IMPORT) {
  4123				if (p + sizeof(*peer) > end)
  4124					goto bad;
  4125				peer = p;
  4126				p += sizeof(*peer);
  4127			} else if (op == CEPH_CAP_OP_EXPORT) {
  4128				/* recorded in unused fields */
  4129				peer = (void *)&h->size;
  4130			}
  4131		}
  4132	
  4133		if (msg_version >= 4) {
  4134			ceph_decode_64_safe(&p, end, extra_info.inline_version, bad);
  4135			ceph_decode_32_safe(&p, end, extra_info.inline_len, bad);
  4136			if (p + extra_info.inline_len > end)
  4137				goto bad;
  4138			extra_info.inline_data = p;
  4139			p += extra_info.inline_len;
  4140		}
  4141	
  4142		if (msg_version >= 5) {
  4143			struct ceph_osd_client	*osdc = &mdsc->fsc->client->osdc;
  4144			u32			epoch_barrier;
  4145	
  4146			ceph_decode_32_safe(&p, end, epoch_barrier, bad);
  4147			ceph_osdc_update_epoch_barrier(osdc, epoch_barrier);
  4148		}
  4149	
  4150		if (msg_version >= 8) {
  4151			u32 pool_ns_len;
  4152	
  4153			/* version >= 6 */
  4154			ceph_decode_skip_64(&p, end, bad);	// flush_tid
  4155			/* version >= 7 */
  4156			ceph_decode_skip_32(&p, end, bad);	// caller_uid
  4157			ceph_decode_skip_32(&p, end, bad);	// caller_gid
  4158			/* version >= 8 */
  4159			ceph_decode_32_safe(&p, end, pool_ns_len, bad);
  4160			if (pool_ns_len > 0) {
  4161				ceph_decode_need(&p, end, pool_ns_len, bad);
  4162				extra_info.pool_ns =
  4163					ceph_find_or_create_string(p, pool_ns_len);
  4164				p += pool_ns_len;
  4165			}
  4166		}
  4167	
  4168		if (msg_version >= 9) {
  4169			struct ceph_timespec *btime;
  4170	
  4171			if (p + sizeof(*btime) > end)
  4172				goto bad;
  4173			btime = p;
  4174			ceph_decode_timespec64(&extra_info.btime, btime);
  4175			p += sizeof(*btime);
  4176			ceph_decode_64_safe(&p, end, extra_info.change_attr, bad);
  4177		}
  4178	
  4179		if (msg_version >= 11) {
  4180			/* version >= 10 */
  4181			ceph_decode_skip_32(&p, end, bad); // flags
  4182			/* version >= 11 */
  4183			extra_info.dirstat_valid = true;
  4184			ceph_decode_64_safe(&p, end, extra_info.nfiles, bad);
  4185			ceph_decode_64_safe(&p, end, extra_info.nsubdirs, bad);
  4186		}
  4187	
  4188		if (msg_version >= 12) {
> 4189			int ret = parse_fscrypt_fields(&p, end, &extra_info);
  4190			if (ret)
  4191				goto bad;
  4192		}
  4193	
  4194		/* lookup ino */
  4195		inode = ceph_find_inode(mdsc->fsc->sb, vino);
  4196		ci = ceph_inode(inode);
  4197		dout(" op %s ino %llx.%llx inode %p\n", ceph_cap_op_name(op), vino.ino,
  4198		     vino.snap, inode);
  4199	
  4200		mutex_lock(&session->s_mutex);
  4201		inc_session_sequence(session);
  4202		dout(" mds%d seq %lld cap seq %u\n", session->s_mds, session->s_seq,
  4203		     (unsigned)seq);
  4204	
  4205		if (!inode) {
  4206			if (op == CEPH_CAP_OP_FLUSH_ACK)
  4207				pr_info("%s: can't find ino %llx:%llx for flush_ack!\n",
  4208					__func__, vino.snap, vino.ino);
  4209			else
  4210				dout(" i don't have ino %llx\n", vino.ino);
  4211	
  4212			if (op == CEPH_CAP_OP_IMPORT) {
  4213				cap = ceph_get_cap(mdsc, NULL);
  4214				cap->cap_ino = vino.ino;
  4215				cap->queue_release = 1;
  4216				cap->cap_id = le64_to_cpu(h->cap_id);
  4217				cap->mseq = mseq;
  4218				cap->seq = seq;
  4219				cap->issue_seq = seq;
  4220				spin_lock(&session->s_cap_lock);
  4221				__ceph_queue_cap_release(session, cap);
  4222				spin_unlock(&session->s_cap_lock);
  4223			}
  4224			goto flush_cap_releases;
  4225		}
  4226	
  4227		/* these will work even if we don't have a cap yet */
  4228		switch (op) {
  4229		case CEPH_CAP_OP_FLUSHSNAP_ACK:
  4230			handle_cap_flushsnap_ack(inode, le64_to_cpu(msg->hdr.tid),
  4231						 h, session);
  4232			goto done;
  4233	
  4234		case CEPH_CAP_OP_EXPORT:
  4235			handle_cap_export(inode, h, peer, session);
  4236			goto done_unlocked;
  4237	
  4238		case CEPH_CAP_OP_IMPORT:
  4239			realm = NULL;
  4240			if (snaptrace_len) {
  4241				down_write(&mdsc->snap_rwsem);
  4242				ceph_update_snap_trace(mdsc, snaptrace,
  4243						       snaptrace + snaptrace_len,
  4244						       false, &realm);
  4245				downgrade_write(&mdsc->snap_rwsem);
  4246			} else {
  4247				down_read(&mdsc->snap_rwsem);
  4248			}
  4249			spin_lock(&ci->i_ceph_lock);
  4250			handle_cap_import(mdsc, inode, h, peer, session,
  4251					  &cap, &extra_info.issued);
  4252			handle_cap_grant(inode, session, cap,
  4253					 h, msg->middle, &extra_info);
  4254			if (realm)
  4255				ceph_put_snap_realm(mdsc, realm);
  4256			goto done_unlocked;
  4257		}
  4258	
  4259		/* the rest require a cap */
  4260		spin_lock(&ci->i_ceph_lock);
  4261		cap = __get_cap_for_mds(ceph_inode(inode), session->s_mds);
  4262		if (!cap) {
  4263			dout(" no cap on %p ino %llx:%llx from mds%d\n",
  4264			     inode, ceph_ino(inode), ceph_snap(inode),
  4265			     session->s_mds);
  4266			spin_unlock(&ci->i_ceph_lock);
  4267			if (op == CEPH_CAP_OP_FLUSH_ACK)
  4268				pr_info("%s: no cap on %p ino %llx:%llx from mds%d for flush_ack!\n",
  4269					__func__, inode, ceph_ino(inode),
  4270					ceph_snap(inode), session->s_mds);
  4271			goto flush_cap_releases;
  4272		}
  4273	
  4274		/* note that each of these drops i_ceph_lock for us */
  4275		switch (op) {
  4276		case CEPH_CAP_OP_REVOKE:
  4277		case CEPH_CAP_OP_GRANT:
  4278			__ceph_caps_issued(ci, &extra_info.issued);
  4279			extra_info.issued |= __ceph_caps_dirty(ci);
  4280			handle_cap_grant(inode, session, cap,
  4281					 h, msg->middle, &extra_info);
  4282			goto done_unlocked;
  4283	
  4284		case CEPH_CAP_OP_FLUSH_ACK:
  4285			handle_cap_flush_ack(inode, le64_to_cpu(msg->hdr.tid),
  4286					     h, session, cap);
  4287			break;
  4288	
  4289		case CEPH_CAP_OP_TRUNC:
  4290			queue_trunc = handle_cap_trunc(inode, h, session,
  4291							&extra_info);
  4292			spin_unlock(&ci->i_ceph_lock);
  4293			if (queue_trunc)
  4294				ceph_queue_vmtruncate(inode);
  4295			break;
  4296	
  4297		default:
  4298			spin_unlock(&ci->i_ceph_lock);
  4299			pr_err("ceph_handle_caps: unknown cap op %d %s\n", op,
  4300			       ceph_cap_op_name(op));
  4301		}
  4302	
  4303	done:
  4304		mutex_unlock(&session->s_mutex);
  4305	done_unlocked:
  4306		iput(inode);
  4307	out:
  4308		ceph_put_string(extra_info.pool_ns);
  4309		kfree(extra_info.fscrypt_auth);
  4310		return;
  4311	
  4312	flush_cap_releases:
  4313		/*
  4314		 * send any cap release message to try to move things
  4315		 * along for the mds (who clearly thinks we still have this
  4316		 * cap).
  4317		 */
  4318		ceph_flush_cap_releases(mdsc, session);
  4319		goto done;
  4320	bad:
  4321		pr_err("ceph_handle_caps: corrupt message\n");
  4322		ceph_msg_dump(msg);
  4323		goto out;
  4324	}
  4325	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108250935.jW3iXlhl-lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HlL+5n6rz5pIUxbD--
