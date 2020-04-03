Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2O5TP2AKGQEJGISVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF0E19D1CF
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 10:08:11 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x136sf5286115pgx.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 01:08:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585901289; cv=pass;
        d=google.com; s=arc-20160816;
        b=cElM4ttNhlaU2pV2D4bJmXot7CEK2TnyVjShwh0+IWoPauuqsfhboMvCGm7kUZwXl3
         /nVW480YzxfVsq2t1ICHZlOYlIaukup3yvTcdpGAGhyr0Do+pFCjxwbbrKzatQKs+K38
         Qso+vrW5+oU0vM7nAYi945rN++xpc3VTgmYBoaieoJAX4vNFJ9JiIScbLuph65hTWxeb
         tP7ziCSxWk2hMuoyEUQ4bGxmOR0TiSsCUku+0U2hZGD4Qz+Jg8jJqwz9+9b7DbAqXmDz
         /uDIvsezQMKfUNvFlrDU0Yv4eU9cRCUt88cjem895SRYsBeyCVKei4LGDckcCuBFN1eY
         0QcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=fwUaJ+kASwUh6qNEoo0Jx/MH8I6MZ997R48gpjp9bqM=;
        b=YSTQWYzOVFeSS8KkQ+unsUSRd09ke7sGe6QVRB7anMsuU2WzI+NCrfls8vO4+HqhYv
         NZVAy4EkHf0kqFOF3qC3LBYpWNpoidOnULnMoLyG+uATrlIKUDtANK55x34pUe+XOqtz
         QUiQufT5jrJt7F6CoUP2f49yCUc7VzI2qvtowER7DT3vjOY3Ig3oDDe57vDHDF3fo1r2
         ApkBl5997MKvrTswxyT+i/Zq89lM5kxe24ytmlCfJI2oehANDTnV3pfwCtKtmnXDTwQS
         7+Czhp21ySY46QB6h/ejcg45Vn9zeGHH7hCqa4RdeCnPBo88NgKblhETIBXDuMg0lGjy
         Jk+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fwUaJ+kASwUh6qNEoo0Jx/MH8I6MZ997R48gpjp9bqM=;
        b=Wc7L5rYnK6FLIxPxEPXxbj521q3RdSna5/ILZvKk9JNJ09lh/nrSRXbyFxSXvz1KH9
         GYCtlkn2bE4GZ9m3lLdJFLIrW6rlHKaaNuDIhb5jbSsgJwh9cdNx2hq1YcXvUt61tHsD
         8zoPYizcrf6GnYOF1h+cT6P7Y/bL5rTfAG1CXmqAZpoipHwUdJNYw5SL3bWTFaR22Gsj
         nbo0eRfYLr+U+FjVaV9Z6lRZULayJqHvTkxnQHAz4FXlJHm9UGlTq5EnHTmY2830c0LU
         XHjQMuUfVir3abTCtOIQPQMQ94oK3nI2OkxnBKGGZnnb7vObYch6h2zN6iPpB4dqs1AC
         BA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fwUaJ+kASwUh6qNEoo0Jx/MH8I6MZ997R48gpjp9bqM=;
        b=S+qwk5Ppph9x+4c9lBBrTxuSKHMFuxXBlce0I89HeARaZuxHkKoMQ5gf9y1pM8OS/6
         tM+tnjBMX0ThdfSnB/NsHqcyIh//48UgjCyBYHCHNTzlTIIPo9r0YouZQbapaG602H9H
         UWiM1c1hVdA5UdVPzUFWt94cmWcvra20p/CEWwpd2uOIsw+EZSGJvxfaa/djft8gOARF
         sJpVGYbThm/yzc6lBtDXiPOf2CB1tDVUR9PXcNPZUARbL6O0mNwIRHq0fbbKfpp2Np2G
         HDGIFQIJrEOZ7CHMCCruTedqIT9q/Ygh+CV4UG+SLPxhbyldk+ZZERjQjWg2YhBt09nz
         oyIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ7dsTzWYWN4Sgo0CuXLhkE1E95EjCciOrOJxAf7TWU29ewaXNL
	K50yY7l/WXXN+eJQNxDgsSs=
X-Google-Smtp-Source: APiQypK0RQXAYsEEuPxRfklIeOfbvICa6vDlGTk+igLA0kd65qV6dgkyFV86Pa1jTmkc5cTdwu8J7Q==
X-Received: by 2002:a17:90a:e015:: with SMTP id u21mr8032991pjy.98.1585901289571;
        Fri, 03 Apr 2020 01:08:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls4863805pfw.3.gmail; Fri, 03 Apr
 2020 01:08:09 -0700 (PDT)
X-Received: by 2002:a63:bf4a:: with SMTP id i10mr7460453pgo.120.1585901288982;
        Fri, 03 Apr 2020 01:08:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585901288; cv=none;
        d=google.com; s=arc-20160816;
        b=W9ZZyoyAiI5cn9WViQueLzskNz3zmw7MCTnxMHStfvdx77b9GZFOvPH8yc/Vm2B+63
         BV1PU232f6n0mQn1lzMGhwpf3sLTIr+QmcATN3MuACp3cLqAn7/lRdhhX2LGKWblwTr8
         Cos5KDP/T02RlOC/zOIQcT7Qr/aYirACiGgrxq0HYg0wMzIs8LmgohlfFchxcAQBoewV
         bQUGh+e5m+RCq0bmW1jPkNcl3koTFaLsvyknhm2tI7vmHnNZqzXyjMI2HlVhP2uj8O+I
         iFmb74FrrAs0v+cEpT8D8hOIUyxXpoJeMbDhTAL2/BJjMyvrNLJ6UpD7yZiE4dTeAeYg
         9FVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=2IS7lAOyfjbaIWLWfGlaZUFocDL1icLeMLzkuaYTg2Y=;
        b=YZ4mNKRgu2fBX9bgFQtRJckPU4YCupt4dR2syIaZa15/RkGPa0LWQ3lA1yCdxTClCK
         7BeOfl2uewmGnwpaE6cTNzOQwDjCEC8kCTbYlTYt6mx+ha8ofcfVluUs/FejM/8ETxvt
         iaTIQhYhyQn/7pX5Mfvgcj58l5jWwQHpm8zTMHWipym7l12tzNqsHXNhN8ku0wFrewEa
         eytOI18F+OKEAA/DH7LOQdTmKl+6IQZVuj4ND8/d6J9LY8Bb9p0Bl3hdCMpddxpN8H7t
         Sd8fmIZON4Qc/Qqfl5lT9o/Ehy97b3AVfUwHUuV0HUdkycup+d1AOfuqyDOxXcNNEEnP
         kV1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id k3si360298plt.1.2020.04.03.01.08.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 01:08:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: /0ftrmlnjWvIeoupELTHpN1UztgPn59gIa/jLhOjU0/aLr/LE2LCKAj63cyKG+lUUKNpr9ExHd
 XfpYhN8e2HXw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2020 01:08:07 -0700
IronPort-SDR: AusJw2/15Mcf86djfNLPs9Y8rYc8/aebi/9F4q8XmcEU4iO/UGkBBk85JtXZXig2XnfWLZ7Ta5
 Jym18VwnPpbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; 
   d="gz'50?scan'50,208,50";a="238808290"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 03 Apr 2020 01:08:05 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jKHMy-000DNP-Ag; Fri, 03 Apr 2020 16:08:04 +0800
Date: Fri, 3 Apr 2020 16:07:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ezequielg:vb2_buffer_handling_v1 10/13]
 drivers/media/platform/vicodec/vicodec-core.c:287:16: warning: incompatible
 integer to pointer conversion assigning to 'struct vb2_buffer *' from 'int'
Message-ID: <202004031641.RlBTNxTh%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/ezequielg/linux vb2_buffer_handling_v1
head:   b8940b7354debe527a51901290d5677d503ae394
commit: a0602f84c7d64de46c8a4c7168d5b1f623dff87c [10/13] vicodec: Make use of vb2_find_buffer()
config: x86_64-randconfig-b003-20200403 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout a0602f84c7d64de46c8a4c7168d5b1f623dff87c
        # save the attached .config to linux build tree
        COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
           case 4: set->sig[3] = op(set->sig[3]);                          \
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
                   set->sig[2] = op(set->sig[2]);                          \
                                    ^        ~
   include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
   #define _sig_not(x)     (~(x))
                              ^
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
                   set->sig[2] = op(set->sig[2]);                          \
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:167:27: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
                                    ^        ~
   include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
   #define _sig_not(x)     (~(x))
                              ^
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:167:10: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:188:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = 0;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:201:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = -1;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:232:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = 0;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/media/platform/vicodec/vicodec-core.c:21:
   In file included from include/media/v4l2-ioctl.h:16:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:244:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = -1;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
>> drivers/media/platform/vicodec/vicodec-core.c:287:16: warning: incompatible integer to pointer conversion assigning to 'struct vb2_buffer *' from 'int' [-Wint-conversion]
                           ref_vb2_buf = vb2_find_buffer(vq_cap,
                                       ^ ~~~~~~~~~~~~~~~~~~~~~~~
   50 warnings and 1 error generated.

vim +287 drivers/media/platform/vicodec/vicodec-core.c

   252	
   253	static int device_process(struct vicodec_ctx *ctx,
   254				  struct vb2_v4l2_buffer *src_vb,
   255				  struct vb2_v4l2_buffer *dst_vb)
   256	{
   257		struct vicodec_dev *dev = ctx->dev;
   258		struct v4l2_fwht_state *state = &ctx->state;
   259		u8 *p_src, *p_dst;
   260		int ret = 0;
   261	
   262		if (ctx->is_enc || ctx->is_stateless)
   263			p_src = vb2_plane_vaddr(&src_vb->vb2_buf, 0);
   264		else
   265			p_src = state->compressed_frame;
   266	
   267		if (ctx->is_stateless) {
   268			struct media_request *src_req = src_vb->vb2_buf.req_obj.req;
   269	
   270			ret = v4l2_ctrl_request_setup(src_req, &ctx->hdl);
   271			if (ret)
   272				return ret;
   273			update_state_from_header(ctx);
   274	
   275			ctx->state.header.size =
   276				htonl(vb2_get_plane_payload(&src_vb->vb2_buf, 0));
   277			/*
   278			 * set the reference buffer from the reference timestamp
   279			 * only if this is a P-frame
   280			 */
   281			if (!(ntohl(ctx->state.header.flags) & FWHT_FL_I_FRAME)) {
   282				struct vb2_buffer *ref_vb2_buf;
   283				struct vb2_queue *vq_cap =
   284					v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
   285							V4L2_BUF_TYPE_VIDEO_CAPTURE);
   286	
 > 287				ref_vb2_buf = vb2_find_buffer(vq_cap,
   288							      ctx->state.ref_frame_ts);
   289				if (!ref_vb2_buf)
   290					return -EINVAL;
   291				if (ref_vb2_buf->state == VB2_BUF_STATE_ERROR)
   292					ret = -EINVAL;
   293				ctx->state.ref_frame.buf =
   294					vb2_plane_vaddr(ref_vb2_buf, 0);
   295			} else {
   296				ctx->state.ref_frame.buf = NULL;
   297			}
   298		}
   299		p_dst = vb2_plane_vaddr(&dst_vb->vb2_buf, 0);
   300		if (!p_src || !p_dst) {
   301			v4l2_err(&dev->v4l2_dev,
   302				 "Acquiring kernel pointers to buffers failed\n");
   303			return -EFAULT;
   304		}
   305	
   306		if (ctx->is_enc) {
   307			struct vicodec_q_data *q_src;
   308			int comp_sz_or_errcode;
   309	
   310			q_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
   311			state->info = q_src->info;
   312			comp_sz_or_errcode = v4l2_fwht_encode(state, p_src, p_dst);
   313			if (comp_sz_or_errcode < 0)
   314				return comp_sz_or_errcode;
   315			vb2_set_plane_payload(&dst_vb->vb2_buf, 0, comp_sz_or_errcode);
   316		} else {
   317			struct vicodec_q_data *q_dst;
   318			unsigned int comp_frame_size = ntohl(ctx->state.header.size);
   319	
   320			q_dst = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
   321			if (comp_frame_size > ctx->comp_max_size)
   322				return -EINVAL;
   323			state->info = q_dst->info;
   324			ret = v4l2_fwht_decode(state, p_src, p_dst);
   325			if (ret < 0)
   326				return ret;
   327			if (!ctx->is_stateless)
   328				copy_cap_to_ref(p_dst, ctx->state.info, &ctx->state);
   329	
   330			vb2_set_plane_payload(&dst_vb->vb2_buf, 0, q_dst->sizeimage);
   331			if (ntohl(ctx->state.header.flags) & FWHT_FL_I_FRAME)
   332				dst_vb->flags |= V4L2_BUF_FLAG_KEYFRAME;
   333			else
   334				dst_vb->flags |= V4L2_BUF_FLAG_PFRAME;
   335		}
   336		return ret;
   337	}
   338	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004031641.RlBTNxTh%25lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
WwIA

--/04w6evG8XlLl3ft--
