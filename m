Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLPPY77AKGQEQK5BQAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 595E22D5828
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 11:25:51 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id a2sf3476631iod.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 02:25:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607595950; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZY/RwjRWY0HdjqiKaoyue0FazaqRhd6/Iy8jgLCWRs7LcI7DQFVAL4Jkpv8o7d/ZUm
         y+8KQsdSCFkEIHE/y86SGFYO71qKY5ezxZ74ja8cvOuXdt5719UxqRGirYl+HDUHpceS
         pTLevt9+4LhZF0Bqmgc5Hk6rAtA2JgW7HBe7og7fHT25t3kx4qjCVSnmcuZ576dtehzi
         8fW4RJjewal7j8A2f3Xur0HEZpPkyeYAuC4eW59qDpl7ncjkwtXlQgryPUy/r1YT+ogF
         2v/S2tXCiiM3aigNWl1423h/k+UBGBVhZ8YKuHPG2zlITl/NVHoeRnSN8Rw4aziyfCei
         3unQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5OUToFJ/epu/iROWLI/lj23d1gr0FLrgHsAHpV9y+Y8=;
        b=zqyB4HHg5bL3pY5Qq8Lv/IeABMIjcK2WoblKDFKjTOAs2haBikfRzsbEMJ9D8gpUhU
         CvVfCgqNNVKDy0KIUKzGpEcSniDaDOLUf6V3OLHlos7UMzGPGTMHINldvH291Qgkt4JA
         k36T1JEsYsmljs6EfxIjQ/8uEXJGoP6ZrR99oMjx2wkH7xiaEjE3Dp83JQJ64NkUFdbh
         7C0rrhVRmiza8sbm8jPsYsoCNmt0vDdi+u1r9Zc6Q9FUlSkfU892H3nMvDPsbl4UtbJw
         pu69z77aehQbv3ICKqC/YMN6yT5mONC9BuJxzOSL0T3jtriYwMLaQMFvCHlvgh6xOwFQ
         7Yug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5OUToFJ/epu/iROWLI/lj23d1gr0FLrgHsAHpV9y+Y8=;
        b=n+3xKzxxgJt+FGiXUjrYawlRVbzGr+FQIAG2jQyc8W0my2Xp6i6uLdS/9f/lUbvsPU
         yP6BoQIjKMQmE71FWVMwkwi8byfk3H7Tqb9a0Fq036iibaKsX3SY75jPIT04F40in3h+
         o8HGO+Nag5y7SObylVD9KXK1XMYnV0Gds0luEjvz8cnVbAREgEgABQPS2n8ULCcv4V3d
         6W0/jEvTi3ZKFUcVRHcr5XYszB5v0Zd4F+M/0ylf3WlNihNxnTgaiOItyb0uEmY3F2Bk
         VOnvXZQ5erzVYNI6hdvZLnVBJUbAeVO6zuPhYto5hJLw2OAJp38wjhyNZ70npaT5HyMF
         I4rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5OUToFJ/epu/iROWLI/lj23d1gr0FLrgHsAHpV9y+Y8=;
        b=dyesl5dDt336lvdQaUOi6crsSbHjmc32Gk7rbm3XnXkRGMP6bEwCR0Wddxk3nOmdU/
         KVZEKTyUL9kUt4Su6YH964A2k2WD/IczPAnWJ0vbKKqbgknZKt2Tsi0yOXWUM2P2rzje
         I4s+duEIq3H2kctm9JVGxIxou/YlJ6nD7tk/TchIfZ7b5XZJBDO12zxv8s5A005tIaUR
         mS90MZIsQqK9Xkv3JecZKslrkC9iVwrUWgJych7uEkM3EB9eFbm8vz11BLZ864s6nlmn
         yIr8lgWr+mpjo1R9asfUC1KX2+v/WnUq4XkpzswtBxEkspYnj3VLd0mBCF7ztbEzTI7z
         pf8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w1qmQF4naWbMMp5B0nvYWr46BfveJhg6BJ2TvpjBqPL2wbncx
	CZTVgVTmRqbuF6LlIwtwxlU=
X-Google-Smtp-Source: ABdhPJy2ZLedjiaGstAUK8x3ZiTXNDI/vZ8W56zDdX5VJoszMcR5W+TrWxOagx1FFeVaKuhd/LaDGQ==
X-Received: by 2002:a6b:8b4c:: with SMTP id n73mr7932828iod.143.1607595949890;
        Thu, 10 Dec 2020 02:25:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:4805:: with SMTP id p5ls575387jaa.5.gmail; Thu, 10 Dec
 2020 02:25:49 -0800 (PST)
X-Received: by 2002:a05:6638:3a3:: with SMTP id z3mr8381319jap.67.1607595949302;
        Thu, 10 Dec 2020 02:25:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607595949; cv=none;
        d=google.com; s=arc-20160816;
        b=JUWb8ReXYuCmNliu/kUJWqcAU0FViZWwxcnVI/oLwXFavI7B7XU1J1NWuFc5YPirtC
         3lCoPIKa2VM12daK/greNPbSao1HhhrSwwjSusn2wH7XjW04fmKHaa11oc/7QC4uzLiR
         31IOc0ffy9GQkLvYyiYh2cEq56MhiulukH0/qq/CX3ZnAHuotYXR9sgrsOmAc/grs8Xb
         8clGEtqyAccsyjeLv/bsaAy5D2FcR3NI8PGd9foAjku5eZcit8j059gHqihxrVmGNTVz
         e9QHQKdibkNC/7CGKIMByl57a2T6mz4E8ENPX+15Z/qdg9x0CS5OkroE1iktHKZQQr2H
         Axxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=SnTXbBiai6jNOf1J4QlR/3cyzduK8Gd1Itnsd/YIvoc=;
        b=Y/hK6DuPz7Fmj7dywLFJvK2OeQBIx5j8u6/LjpOwefj5hF1hLdaGQ2RFSObXHGx1/S
         D4pvx1hXkJuQLQoJxn8s5IRHuQiUSlgP45LK1Qu4EOkCtCQyhcr251ZPku1r8kuCw80H
         MXRvmiGo2pY1uzuho9rtgMojG11gEKUpSVdeD+571Pn7ufubUwOYyZ3+fqK1ba9Lj9ei
         5yzLtXNDSLRAMtHNfa5noixqxk4iY+a18vBuevN6IZzS0s3KLou3ga1EgQhyJ/snzOtq
         lq5J2NUxm5a3nE7qRRoVp/yVQPH1rkdhTPMHCbDgZAhgATlfamDKd4b16H3UwxVjtpz1
         4Xhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id i5si294763ilu.5.2020.12.10.02.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 02:25:49 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 8gcOHkf1a8LUKsRENg49Q7lKv3kxfZ3S1suYiUVA/GEdV9TVOHQSBKtMZLgBI03rbpTSoEOiYu
 Dpz5+hvCx8+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="170722272"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; 
   d="gz'50?scan'50,208,50";a="170722272"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2020 02:25:48 -0800
IronPort-SDR: ZijH1GuWGq6W1jaxlBmwxtattgMtvEvRkTZQUakRwj7kW6H0zHzMp1uIOtQBUPMdWBhs61GJBY
 1vypvQIijEdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; 
   d="gz'50?scan'50,208,50";a="438285832"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2020 02:25:45 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1knJ8r-0000Cw-4P; Thu, 10 Dec 2020 10:25:45 +0000
Date: Thu, 10 Dec 2020 18:25:37 +0800
From: kernel test robot <lkp@intel.com>
To: Ronnie Sahlberg <lsahlber@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-cifs@vger.kernel.org, samba-technical@lists.samba.org,
	Steve French <stfrench@microsoft.com>
Subject: [cifs:for-next 12/15] fs/cifs/fs_context.c:650:6: warning: variable
 'opt' is used uninitialized whenever 'if' condition is false
Message-ID: <202012101833.po5HaWh4-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0F1p//8PRICkK4MW"
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


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
head:   8f79025175de6bc8cac5c7aa4ea3763e92270058
commit: 8234c06da4fba6440fdb82c172347f4612649801 [12/15] cifs: switch to new mount api
config: powerpc-randconfig-r005-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
        git fetch --no-tags cifs for-next
        git checkout 8234c06da4fba6440fdb82c172347f4612649801
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/cifs/fs_context.c:650:6: warning: variable 'opt' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (!skip_parsing) {
               ^~~~~~~~~~~~~
   fs/cifs/fs_context.c:656:10: note: uninitialized use occurs here
           switch (opt) {
                   ^~~
   fs/cifs/fs_context.c:650:2: note: remove the 'if' if its condition is always true
           if (!skip_parsing) {
           ^~~~~~~~~~~~~~~~~~~
   fs/cifs/fs_context.c:635:12: note: initialize the variable 'opt' to silence this warning
           int i, opt;
                     ^
                      = 0
   1 warning generated.

vim +650 fs/cifs/fs_context.c

   629	
   630	static int smb3_fs_context_parse_param(struct fs_context *fc,
   631					      struct fs_parameter *param)
   632	{
   633		struct fs_parse_result result;
   634		struct smb3_fs_context *ctx = smb3_fc2context(fc);
   635		int i, opt;
   636		bool is_smb3 = !strcmp(fc->fs_type->name, "smb3");
   637		bool skip_parsing = false;
   638	
   639		cifs_dbg(FYI, "CIFS: parsing cifs mount option '%s'\n", param->key);
   640	
   641		/*
   642		 * fs_parse can not handle string options with an empty value so
   643		 * we will need special handling of them.
   644		 */
   645		if (param->type == fs_value_is_string && param->string[0] == 0) {
   646			if (!strcmp("pass", param->key) || !strcmp("password", param->key))
   647				skip_parsing = true;
   648		}
   649	
 > 650		if (!skip_parsing) {
   651			opt = fs_parse(fc, smb3_fs_parameters, param, &result);
   652			if (opt < 0)
   653				return ctx->sloppy ? 1 : opt;
   654		}
   655	
   656		switch (opt) {
   657		case Opt_compress:
   658			ctx->compression = UNKNOWN_TYPE;
   659			cifs_dbg(VFS,
   660				"SMB3 compression support is experimental\n");
   661			break;
   662		case Opt_nodfs:
   663			ctx->nodfs = 1;
   664			break;
   665		case Opt_hard:
   666			if (result.negated)
   667				ctx->retry = 0;
   668			else
   669				ctx->retry = 1;
   670			break;
   671		case Opt_soft:
   672			if (result.negated)
   673				ctx->retry = 1;
   674			else
   675				ctx->retry = 0;
   676			break;
   677		case Opt_mapposix:
   678			if (result.negated)
   679				ctx->remap = false;
   680			else {
   681				ctx->remap = true;
   682				ctx->sfu_remap = false; /* disable SFU mapping */
   683			}
   684			break;
   685		case Opt_user_xattr:
   686			if (result.negated)
   687				ctx->no_xattr = 1;
   688			else
   689				ctx->no_xattr = 0;
   690			break;
   691		case Opt_forceuid:
   692			if (result.negated)
   693				ctx->override_uid = 0;
   694			else
   695				ctx->override_uid = 1;
   696			break;
   697		case Opt_forcegid:
   698			if (result.negated)
   699				ctx->override_gid = 0;
   700			else
   701				ctx->override_gid = 1;
   702			break;
   703		case Opt_perm:
   704			if (result.negated)
   705				ctx->noperm = 1;
   706			else
   707				ctx->noperm = 0;
   708			break;
   709		case Opt_dynperm:
   710			if (result.negated)
   711				ctx->dynperm = 0;
   712			else
   713				ctx->dynperm = 1;
   714			break;
   715		case Opt_sfu:
   716			if (result.negated)
   717				ctx->sfu_emul = 0;
   718			else
   719				ctx->sfu_emul = 1;
   720			break;
   721		case Opt_noblocksend:
   722			ctx->noblocksnd = 1;
   723			break;
   724		case Opt_noautotune:
   725			ctx->noautotune = 1;
   726			break;
   727		case Opt_nolease:
   728			ctx->no_lease = 1;
   729			break;
   730		case Opt_nodelete:
   731			ctx->nodelete = 1;
   732			break;
   733		case Opt_multichannel:
   734			if (result.negated) {
   735				ctx->multichannel = false;
   736				ctx->max_channels = 1;
   737			} else {
   738				ctx->multichannel = true;
   739				/* if number of channels not specified, default to 2 */
   740				if (ctx->max_channels < 2)
   741					ctx->max_channels = 2;
   742			}
   743			break;
   744		case Opt_uid:
   745			ctx->linux_uid.val = result.uint_32;
   746			ctx->uid_specified = true;
   747			break;
   748		case Opt_cruid:
   749			ctx->cred_uid.val = result.uint_32;
   750			break;
   751		case Opt_backupgid:
   752			ctx->backupgid.val = result.uint_32;
   753			ctx->backupgid_specified = true;
   754			break;
   755		case Opt_gid:
   756			ctx->linux_gid.val = result.uint_32;
   757			ctx->gid_specified = true;
   758			break;
   759		case Opt_port:
   760			ctx->port = result.uint_32;
   761			break;
   762		case Opt_file_mode:
   763			ctx->file_mode = result.uint_32;
   764			break;
   765		case Opt_dirmode:
   766			ctx->dir_mode = result.uint_32;
   767			break;
   768		case Opt_min_enc_offload:
   769			ctx->min_offload = result.uint_32;
   770			break;
   771		case Opt_blocksize:
   772			/*
   773			 * inode blocksize realistically should never need to be
   774			 * less than 16K or greater than 16M and default is 1MB.
   775			 * Note that small inode block sizes (e.g. 64K) can lead
   776			 * to very poor performance of common tools like cp and scp
   777			 */
   778			if ((result.uint_32 < CIFS_MAX_MSGSIZE) ||
   779			   (result.uint_32 > (4 * SMB3_DEFAULT_IOSIZE))) {
   780				cifs_dbg(VFS, "%s: Invalid blocksize\n",
   781					__func__);
   782				goto cifs_parse_mount_err;
   783			}
   784			ctx->bsize = result.uint_32;
   785			break;
   786		case Opt_rsize:
   787			ctx->rsize = result.uint_32;
   788			break;
   789		case Opt_wsize:
   790			ctx->wsize = result.uint_32;
   791			break;
   792		case Opt_actimeo:
   793			ctx->actimeo = HZ * result.uint_32;
   794			if (ctx->actimeo > CIFS_MAX_ACTIMEO) {
   795				cifs_dbg(VFS, "attribute cache timeout too large\n");
   796				goto cifs_parse_mount_err;
   797			}
   798			break;
   799		case Opt_echo_interval:
   800			ctx->echo_interval = result.uint_32;
   801			break;
   802		case Opt_snapshot:
   803			ctx->snapshot_time = result.uint_32;
   804			break;
   805		case Opt_max_credits:
   806			if (result.uint_32 < 20 || result.uint_32 > 60000) {
   807				cifs_dbg(VFS, "%s: Invalid max_credits value\n",
   808					 __func__);
   809				goto cifs_parse_mount_err;
   810			}
   811			ctx->max_credits = result.uint_32;
   812			break;
   813		case Opt_max_channels:
   814			if (result.uint_32 < 1 || result.uint_32 > CIFS_MAX_CHANNELS) {
   815				cifs_dbg(VFS, "%s: Invalid max_channels value, needs to be 1-%d\n",
   816					 __func__, CIFS_MAX_CHANNELS);
   817				goto cifs_parse_mount_err;
   818			}
   819			ctx->max_channels = result.uint_32;
   820			break;
   821		case Opt_handletimeout:
   822			ctx->handle_timeout = result.uint_32;
   823			if (ctx->handle_timeout > SMB3_MAX_HANDLE_TIMEOUT) {
   824				cifs_dbg(VFS, "Invalid handle cache timeout, longer than 16 minutes\n");
   825				goto cifs_parse_mount_err;
   826			}
   827			break;
   828		case Opt_source:
   829			kfree(ctx->UNC);
   830			ctx->UNC = NULL;
   831			switch (smb3_parse_devname(param->string, ctx)) {
   832			case 0:
   833				break;
   834			case -ENOMEM:
   835				cifs_dbg(VFS, "Unable to allocate memory for devname\n");
   836				goto cifs_parse_mount_err;
   837			case -EINVAL:
   838				cifs_dbg(VFS, "Malformed UNC in devname\n");
   839				goto cifs_parse_mount_err;
   840			default:
   841				cifs_dbg(VFS, "Unknown error parsing devname\n");
   842				goto cifs_parse_mount_err;
   843			}
   844			fc->source = kstrdup(param->string, GFP_KERNEL);
   845			if (fc->source == NULL) {
   846				cifs_dbg(VFS, "OOM when copying UNC string\n");
   847				goto cifs_parse_mount_err;
   848			}
   849			break;
   850		case Opt_user:
   851			kfree(ctx->username);
   852			ctx->username = NULL;
   853			if (strlen(param->string) == 0) {
   854				/* null user, ie. anonymous authentication */
   855				ctx->nullauth = 1;
   856				break;
   857			}
   858	
   859			if (strnlen(param->string, CIFS_MAX_USERNAME_LEN) >
   860			    CIFS_MAX_USERNAME_LEN) {
   861				pr_warn("username too long\n");
   862				goto cifs_parse_mount_err;
   863			}
   864			ctx->username = kstrdup(param->string, GFP_KERNEL);
   865			if (ctx->username == NULL) {
   866				cifs_dbg(VFS, "OOM when copying username string\n");
   867				goto cifs_parse_mount_err;
   868			}
   869			break;
   870		case Opt_pass:
   871			kfree(ctx->password);
   872			ctx->password = NULL;
   873			if (strlen(param->string) == 0)
   874				break;
   875	
   876			ctx->password = kstrdup(param->string, GFP_KERNEL);
   877			if (ctx->password == NULL) {
   878				cifs_dbg(VFS, "OOM when copying password string\n");
   879				goto cifs_parse_mount_err;
   880			}
   881			break;
   882		case Opt_ip:
   883			if (strlen(param->string) == 0) {
   884				ctx->got_ip = false;
   885				break;
   886			}
   887			if (!cifs_convert_address((struct sockaddr *)&ctx->dstaddr,
   888						  param->string,
   889						  strlen(param->string))) {
   890				pr_err("bad ip= option (%s)\n", param->string);
   891				goto cifs_parse_mount_err;
   892			}
   893			ctx->got_ip = true;
   894			break;
   895		case Opt_domain:
   896			if (strnlen(param->string, CIFS_MAX_DOMAINNAME_LEN)
   897					== CIFS_MAX_DOMAINNAME_LEN) {
   898				pr_warn("domain name too long\n");
   899				goto cifs_parse_mount_err;
   900			}
   901	
   902			kfree(ctx->domainname);
   903			ctx->domainname = kstrdup(param->string, GFP_KERNEL);
   904			if (ctx->domainname == NULL) {
   905				cifs_dbg(VFS, "OOM when copying domainname string\n");
   906				goto cifs_parse_mount_err;
   907			}
   908			cifs_dbg(FYI, "Domain name set\n");
   909			break;
   910		case Opt_srcaddr:
   911			if (!cifs_convert_address(
   912					(struct sockaddr *)&ctx->srcaddr,
   913					param->string, strlen(param->string))) {
   914				pr_warn("Could not parse srcaddr: %s\n",
   915					param->string);
   916				goto cifs_parse_mount_err;
   917			}
   918			break;
   919		case Opt_iocharset:
   920			if (strnlen(param->string, 1024) >= 65) {
   921				pr_warn("iocharset name too long\n");
   922				goto cifs_parse_mount_err;
   923			}
   924	
   925			if (strncasecmp(param->string, "default", 7) != 0) {
   926				kfree(ctx->iocharset);
   927				ctx->iocharset = kstrdup(param->string, GFP_KERNEL);
   928				if (ctx->iocharset == NULL) {
   929					cifs_dbg(VFS, "OOM when copying iocharset string\n");
   930					goto cifs_parse_mount_err;
   931				}
   932			}
   933			/* if iocharset not set then load_nls_default
   934			 * is used by caller
   935			 */
   936			 cifs_dbg(FYI, "iocharset set to %s\n", ctx->iocharset);
   937			break;
   938		case Opt_netbiosname:
   939			memset(ctx->source_rfc1001_name, 0x20,
   940				RFC1001_NAME_LEN);
   941			/*
   942			 * FIXME: are there cases in which a comma can
   943			 * be valid in workstation netbios name (and
   944			 * need special handling)?
   945			 */
   946			for (i = 0; i < RFC1001_NAME_LEN; i++) {
   947				/* don't ucase netbiosname for user */
   948				if (param->string[i] == 0)
   949					break;
   950				ctx->source_rfc1001_name[i] = param->string[i];
   951			}
   952			/* The string has 16th byte zero still from
   953			 * set at top of the function
   954			 */
   955			if (i == RFC1001_NAME_LEN && param->string[i] != 0)
   956				pr_warn("netbiosname longer than 15 truncated\n");
   957			break;
   958		case Opt_servern:
   959			/* last byte, type, is 0x20 for servr type */
   960			memset(ctx->target_rfc1001_name, 0x20,
   961				RFC1001_NAME_LEN_WITH_NULL);
   962			/*
   963			 * BB are there cases in which a comma can be valid in this
   964			 * workstation netbios name (and need special handling)?
   965			 */
   966	
   967			/* user or mount helper must uppercase the netbios name */
   968			for (i = 0; i < 15; i++) {
   969				if (param->string[i] == 0)
   970					break;
   971				ctx->target_rfc1001_name[i] = param->string[i];
   972			}
   973	
   974			/* The string has 16th byte zero still from set at top of function */
   975			if (i == RFC1001_NAME_LEN && param->string[i] != 0)
   976				pr_warn("server netbiosname longer than 15 truncated\n");
   977			break;
   978		case Opt_ver:
   979			/* version of mount userspace tools, not dialect */
   980			/* If interface changes in mount.cifs bump to new ver */
   981			if (strncasecmp(param->string, "1", 1) == 0) {
   982				if (strlen(param->string) > 1) {
   983					pr_warn("Bad mount helper ver=%s. Did you want SMB1 (CIFS) dialect and mean to type vers=1.0 instead?\n",
   984						param->string);
   985					goto cifs_parse_mount_err;
   986				}
   987				/* This is the default */
   988				break;
   989			}
   990			/* For all other value, error */
   991			pr_warn("Invalid mount helper version specified\n");
   992			goto cifs_parse_mount_err;
   993		case Opt_vers:
   994			/* protocol version (dialect) */
   995			if (cifs_parse_smb_version(param->string, ctx, is_smb3) != 0)
   996				goto cifs_parse_mount_err;
   997			ctx->got_version = true;
   998			break;
   999		case Opt_sec:
  1000			if (cifs_parse_security_flavors(param->string, ctx) != 0)
  1001				goto cifs_parse_mount_err;
  1002			break;
  1003		case Opt_cache:
  1004			if (cifs_parse_cache_flavor(param->string, ctx) != 0)
  1005				goto cifs_parse_mount_err;
  1006			break;
  1007		case Opt_rootfs:
  1008	#ifdef CONFIG_CIFS_ROOT
  1009			ctx->rootfs = true;
  1010	#endif
  1011			break;
  1012		case Opt_posixpaths:
  1013			if (result.negated)
  1014				ctx->posix_paths = 0;
  1015			else
  1016				ctx->posix_paths = 1;
  1017			break;
  1018		case Opt_unix:
  1019			if (result.negated)
  1020				ctx->linux_ext = 0;
  1021			else
  1022				ctx->no_linux_ext = 1;
  1023			break;
  1024		case Opt_nocase:
  1025			ctx->nocase = 1;
  1026			break;
  1027		case Opt_brl:
  1028			if (result.negated) {
  1029				/*
  1030				 * turn off mandatory locking in mode
  1031				 * if remote locking is turned off since the
  1032				 * local vfs will do advisory
  1033				 */
  1034				if (ctx->file_mode ==
  1035					(S_IALLUGO & ~(S_ISUID | S_IXGRP)))
  1036					ctx->file_mode = S_IALLUGO;
  1037				ctx->nobrl =  1;
  1038			} else
  1039				ctx->nobrl =  0;
  1040			break;
  1041		case Opt_handlecache:
  1042			if (result.negated)
  1043				ctx->nohandlecache = 1;
  1044			else
  1045				ctx->nohandlecache = 0;
  1046			break;
  1047		case Opt_forcemandatorylock:
  1048			ctx->mand_lock = 1;
  1049			break;
  1050		case Opt_setuids:
  1051			ctx->setuids = result.negated;
  1052			break;
  1053		case Opt_intr:
  1054			ctx->intr = !result.negated;
  1055			break;
  1056		case Opt_setuidfromacl:
  1057			ctx->setuidfromacl = 1;
  1058			break;
  1059		case Opt_strictsync:
  1060			ctx->nostrictsync = result.negated;
  1061			break;
  1062		case Opt_serverino:
  1063			ctx->server_ino = !result.negated;
  1064			break;
  1065		case Opt_rwpidforward:
  1066			ctx->rwpidforward = 1;
  1067			break;
  1068		case Opt_modesid:
  1069			ctx->mode_ace = 1;
  1070			break;
  1071		case Opt_cifsacl:
  1072			ctx->cifs_acl = !result.negated;
  1073			break;
  1074		case Opt_acl:
  1075			ctx->no_psx_acl = result.negated;
  1076			break;
  1077		case Opt_locallease:
  1078			ctx->local_lease = 1;
  1079			break;
  1080		case Opt_sign:
  1081			ctx->sign = true;
  1082			break;
  1083		case Opt_ignore_signature:
  1084			ctx->sign = true;
  1085			ctx->ignore_signature = true;
  1086			break;
  1087		case Opt_seal:
  1088			/* we do not do the following in secFlags because seal
  1089			 * is a per tree connection (mount) not a per socket
  1090			 * or per-smb connection option in the protocol
  1091			 * vol->secFlg |= CIFSSEC_MUST_SEAL;
  1092			 */
  1093			ctx->seal = 1;
  1094			break;
  1095		case Opt_noac:
  1096			pr_warn("Mount option noac not supported. Instead set /proc/fs/cifs/LookupCacheEnabled to 0\n");
  1097			break;
  1098		case Opt_fsc:
  1099	#ifndef CONFIG_CIFS_FSCACHE
  1100			cifs_dbg(VFS, "FS-Cache support needs CONFIG_CIFS_FSCACHE kernel config option set\n");
  1101			goto cifs_parse_mount_err;
  1102	#endif
  1103			ctx->fsc = true;
  1104			break;
  1105		case Opt_mfsymlinks:
  1106			ctx->mfsymlinks = true;
  1107			break;
  1108		case Opt_multiuser:
  1109			ctx->multiuser = true;
  1110			break;
  1111		case Opt_sloppy:
  1112			ctx->sloppy = true;
  1113			break;
  1114		case Opt_nosharesock:
  1115			ctx->nosharesock = true;
  1116			break;
  1117		case Opt_persistent:
  1118			if (result.negated) {
  1119				if ((ctx->nopersistent) || (ctx->resilient)) {
  1120					cifs_dbg(VFS,
  1121					  "persistenthandles mount options conflict\n");
  1122					goto cifs_parse_mount_err;
  1123				}
  1124			} else {
  1125				ctx->nopersistent = true;
  1126				if (ctx->persistent) {
  1127					cifs_dbg(VFS,
  1128					  "persistenthandles mount options conflict\n");
  1129					goto cifs_parse_mount_err;
  1130				}
  1131			}
  1132			break;
  1133		case Opt_resilient:
  1134			if (result.negated) {
  1135				ctx->resilient = false; /* already the default */
  1136			} else {
  1137				ctx->resilient = true;
  1138				if (ctx->persistent) {
  1139					cifs_dbg(VFS,
  1140					  "persistenthandles mount options conflict\n");
  1141					goto cifs_parse_mount_err;
  1142				}
  1143			}
  1144			break;
  1145		case Opt_domainauto:
  1146			ctx->domainauto = true;
  1147			break;
  1148		case Opt_rdma:
  1149			ctx->rdma = true;
  1150			break;
  1151		}
  1152	
  1153		return 0;
  1154	
  1155	 cifs_parse_mount_err:
  1156		return 1;
  1157	}
  1158	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012101833.po5HaWh4-lkp%40intel.com.

--0F1p//8PRICkK4MW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
17udnsHABV4bgf8Hi4oM+fepAQA=

--0F1p//8PRICkK4MW--
