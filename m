Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4N43TVQKGQEK6ZUVMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EF01CAE2A1
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 05:54:25 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id s19sf2563474ljg.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 20:54:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568087665; cv=pass;
        d=google.com; s=arc-20160816;
        b=0/6e0yT7BOkT1bHbVsmI8HgNc0xoh7XlGW9PJ0Yo8YVR100Wq5CF1/pUK7e6Nde27E
         OctVaE5vw+tDe+Q/56RVBr3AUPJwbDVKDs59XWpsMWl08/jdmjOXK+YwIId8c1dbtwEL
         osxTIli05LyRAlJk3wvt7DR9IrejOyB0WRBS9OEzg006AWTFDeSeVwDhNBTe91wgZd6E
         504TbTOJ15VMxcGbOEKRrhopbeZtb+u304qpOlueae3xtfvaZcWK+/fjh968sgtXYiR9
         8yY/VBD9NP1ezg7MkX7/As8bbXz0iSN6Tw1XMi7hTOR75Isux0L1MQ8qi51Euww31TDq
         8Zng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=+RRpqepPU+KMTAQDOwpdvAqafDHGtZTLWACdOVjzaW8=;
        b=NZi1qs4mXzjV+xmxVlZL1r8qLrbX9VByHIE6FDgQ9wSmsdi5aT15RQ/THvQQqHq5DF
         7IVMPyrlMryI1hJcPxP4Rig76RPsC3SfDQGNl/PFAT3kiMJNQGJWHU2zfUDAJdcJcAjW
         RdyWmiXt0mZzPt1jYqoSCDULo+PPdwzSsF6IcYoRVii9FFzTnb4YI7xQbQOPUgfVqEDP
         UAzAiCT76pISUyYY+faFV4RgfsM1M2i05YOq9M67Pxnp99uPH2e7MuGOWc8wXk5DtAy8
         PaJXw1Wwj/A87kH/0Kr6Llw0D5/oCR5+4UoyUi50hg9DKrfT7zt3j8cWRRVMk3wUGCnz
         zcaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hGIkTnih;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+RRpqepPU+KMTAQDOwpdvAqafDHGtZTLWACdOVjzaW8=;
        b=KFUnZwiIyn8LJ8DgATF+AdjabElxPOo/BkbRmSe7Pz7AKi/tX/z/IM4LNYJU3Kr4ZF
         Cr9nVB/zuSZdD4yhop4BnZRrtScYwSTL+xAe4776v1bZ5wL59RRQvj7NR+PWgfFyo3Ta
         lt4Ia4zrDFng7BW9yjoKgO81syg6OtVaikOj2A38IUztV0H9lVMqomKVRamgHSGwBH1d
         x35dJfz9uT8Zj07S2KcwpGt2pv6Y87GsT7rVqI3Em7MN8Eirpaau1WCiT+SCyKVQd/uE
         gcG9jBKaJMXOxL/hkqcfp277IFv6SnoafmzluWVf/IdcvWQSc++ke0f/UqQDhB+JU7E0
         Eu4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+RRpqepPU+KMTAQDOwpdvAqafDHGtZTLWACdOVjzaW8=;
        b=cKCVkQuQUcGUhd1UugNSQnUV2bjsB76aIeq7fx21pQbc+l9UH2vQDMDeWdr/0X6A/B
         lzazAdmYDKvfmtYZIJq0zJF6hUn2e0hypY/oD5npIMVKwsk+Y9F7o0WY9adVkOgt1rZj
         in6kjmrhi2vT+5cM+394hVQdoctoNPsqHnJpQPUlOQ1oPin9Q8OktdmaqlSV0//rem1q
         +rSIZdWC7zGIE0oMR0SBzev6LqA/J/p3C0wtsNQjldh7rlyPekl10dgyqjCEjuNtxO/0
         zdurpM9wq+Ceu0CgKCk/6vsQg+KNG8FlZ14Y/yopmu9Do8sAzMl7V2MbVz4zVCH0bIPP
         v5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+RRpqepPU+KMTAQDOwpdvAqafDHGtZTLWACdOVjzaW8=;
        b=Puy+R1iEI9x6IfX6DiVXWu4K+/i+p0A8JNe8z7cnOM3vavLudrVgjyYedGeUXgscpH
         nE+6dRog53t5gyD2Xz7XAlGFzyMMEYvdrCRsodEZXB6M1cTNFZQC4EXlGCvnPQSzx+wg
         veh2pIKdG9dInizEvLVzAwjSkcWlkZUPqdLiDM7dw62HGV67+ukqEExM9cKWIJGgbNNW
         HMHrPnglCU1xyERwbbApcUdRR1CjyGTdMTigsTBOQ4udz+Q9osMt6uxohuBGAZdapHDQ
         ngq/P+JL46X6Src5YzyFiVT795S+B+1UZb1DlDGXT+G9GtD1OJg/ofUyTR4QNm1xN1md
         QfsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdim2S/mwxMD098UCSeWY2WsPsgNYMS8zlN7oNU/R2wgi6zX1G
	MzPXeHu/aNjvjeoghl7qVro=
X-Google-Smtp-Source: APXvYqzuebHNEx31cLd6Ng9KdPh/4+iNsSZbQ/W5iQ7eLF5EyIjJFjWXtHBA0p59/fz70WiJH1ULDw==
X-Received: by 2002:ac2:4114:: with SMTP id b20mr941484lfi.19.1568087665526;
        Mon, 09 Sep 2019 20:54:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:93d6:: with SMTP id p22ls1855804ljh.13.gmail; Mon, 09
 Sep 2019 20:54:25 -0700 (PDT)
X-Received: by 2002:a2e:9086:: with SMTP id l6mr18548404ljg.120.1568087665068;
        Mon, 09 Sep 2019 20:54:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568087665; cv=none;
        d=google.com; s=arc-20160816;
        b=xXxOv3Gzjv/19rrNJHiMErfbtrYC/eaY7db1HXt2UumMJYxukMQoxkCjVJTanEMYiI
         gFBiTv3KB9Nv9lx1/lDbBMYNa/WmlEgzB83ZezvuOwu2qYqAdzTOOCZTMmR4bJtlQahE
         IvzpY/UNtCBw06r3anNYdQA3YSzksSLe2sJpRYTfJF41p/PblPXjnpkQX1kfI+SRX+qS
         TKokWDPk6wkyb3pQCZSitVY7Um059piOChXfX21JqNp2g7ezeNQzhbnlV6wGv6Tna3hE
         H0O0XP+8qgWvB/7VSY1wRSujGZ/e9CesLHHZDrz1YFdwsTZmk20insSW6fZwf/flZa9x
         6yZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=28YSfalDzh/oTYQ4/Ev3arg4sOw0hegShcXGWt2ouR4=;
        b=pg5BmJitKy1A/lc9ccs3BFo0bOh0NjgqfueCLs0KiCkfbfO8ICn3qC0/62z1F5mPoq
         INF9oeoY8+qfjVTL1De1GKEkr7ai1z+HNyfUgxzs4PhwOrkmmxwO7Ff+kwbWBfmiAuWW
         CzelqSBSoM3Py4SaFYVyVW5yCt8x2jEpdeTD4OeYAAHNMJHXu1Fdgb72DYSS4amHsPAz
         y6Ex/AOFhFxLkmQnH74lmOtUkYOF0q32x4DJekbniJ6dHxmtdOLbqbIWajXtTFIHbXJH
         Q1KF6i9nG56fz/ESM/4/llCIwj305r2jqC/mi0NJPZe+oyBviZ9Fajp1G1i5GD3H4Q1B
         j2Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hGIkTnih;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d3si886050lfq.1.2019.09.09.20.54.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 20:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id i1so16486766wro.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 20:54:24 -0700 (PDT)
X-Received: by 2002:a5d:4ac8:: with SMTP id y8mr16836008wrs.98.1568087663352;
        Mon, 09 Sep 2019 20:54:23 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l6sm8168978wrv.59.2019.09.09.20.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2019 20:54:22 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:54:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH net-next 2/5] sctp: add pf_expose per netns and sock and
 asoc
Message-ID: <20190910035421.GB1778@archlinux-threadripper>
References: <201909091802.pU2vj2DA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909091802.pU2vj2DA%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hGIkTnih;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Xin,

The 0day team has been doing clang builds for us and this warning popped
up. Let me know if you have any questions.

On Mon, Sep 09, 2019 at 06:44:47PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <00fb06e74d8eedeb033dad83de18380bf6261231.1568015756.git.lucien.xin@gmail.com>
> References: <00fb06e74d8eedeb033dad83de18380bf6261231.1568015756.git.lucien.xin@gmail.com>
> TO: Xin Long <lucien.xin@gmail.com>
> CC: network dev <netdev@vger.kernel.org>, linux-sctp@vger.kernel.org
> CC: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Neil Horman <nhorman@tuxdriver.com>, davem@davemloft.net
> 
> Hi Xin,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on net-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Xin-Long/sctp-update-from-rfc7829/20190909-160115
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net/sctp/associola.c:799:24: warning: use of logical '&&' with constant operand [-Wconstant-logical-operand]
>                    if (transport->state && SCTP_UNCONFIRMED &&
>                                         ^  ~~~~~~~~~~~~~~~~
>    net/sctp/associola.c:799:24: note: use '&' for a bitwise operation
>                    if (transport->state && SCTP_UNCONFIRMED &&
>                                         ^~
>                                         &
>    net/sctp/associola.c:799:24: note: remove constant to silence this warning
>                    if (transport->state && SCTP_UNCONFIRMED &&
>                                        ~^~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> 
> vim +799 net/sctp/associola.c
> 
>    775	
>    776	/* Engage in transport control operations.
>    777	 * Mark the transport up or down and send a notification to the user.
>    778	 * Select and update the new active and retran paths.
>    779	 */
>    780	void sctp_assoc_control_transport(struct sctp_association *asoc,
>    781					  struct sctp_transport *transport,
>    782					  enum sctp_transport_cmd command,
>    783					  sctp_sn_error_t error)
>    784	{
>    785		struct sctp_ulpevent *event;
>    786		struct sockaddr_storage addr;
>    787		int spc_state = 0;
>    788		bool ulp_notify = true;
>    789	
>    790		/* Record the transition on the transport.  */
>    791		switch (command) {
>    792		case SCTP_TRANSPORT_UP:
>    793			/* If we are moving from UNCONFIRMED state due
>    794			 * to heartbeat success, report the SCTP_ADDR_CONFIRMED
>    795			 * state to the user, otherwise report SCTP_ADDR_AVAILABLE.
>    796			 */
>    797			if (transport->state == SCTP_PF && !asoc->pf_expose)
>    798				ulp_notify = false;
>  > 799			if (transport->state && SCTP_UNCONFIRMED &&

I assume this && should either be a '&' or '=='?

>    800			    SCTP_HEARTBEAT_SUCCESS == error)
>    801				spc_state = SCTP_ADDR_CONFIRMED;
>    802			else
>    803				spc_state = SCTP_ADDR_AVAILABLE;
>    804			transport->state = SCTP_ACTIVE;
>    805			break;
>    806	
>    807		case SCTP_TRANSPORT_DOWN:
>    808			/* If the transport was never confirmed, do not transition it
>    809			 * to inactive state.  Also, release the cached route since
>    810			 * there may be a better route next time.
>    811			 */
>    812			if (transport->state != SCTP_UNCONFIRMED) {
>    813				transport->state = SCTP_INACTIVE;
>    814				spc_state = SCTP_ADDR_UNREACHABLE;
>    815			} else {
>    816				sctp_transport_dst_release(transport);
>    817				ulp_notify = false;
>    818			}
>    819			break;
>    820	
>    821		case SCTP_TRANSPORT_PF:
>    822			transport->state = SCTP_PF;
>    823			if (!asoc->pf_expose)
>    824				ulp_notify = false;
>    825			else
>    826				spc_state = SCTP_ADDR_POTENTIALLY_FAILED;
>    827			break;
>    828	
>    829		default:
>    830			return;
>    831		}
>    832	
>    833		/* Generate and send a SCTP_PEER_ADDR_CHANGE notification
>    834		 * to the user.
>    835		 */
>    836		if (ulp_notify) {
>    837			memset(&addr, 0, sizeof(struct sockaddr_storage));
>    838			memcpy(&addr, &transport->ipaddr,
>    839			       transport->af_specific->sockaddr_len);
>    840	
>    841			event = sctp_ulpevent_make_peer_addr_change(asoc, &addr,
>    842						0, spc_state, error, GFP_ATOMIC);
>    843			if (event)
>    844				asoc->stream.si->enqueue_event(&asoc->ulpq, event);
>    845		}
>    846	
>    847		/* Select new active and retran paths. */
>    848		sctp_select_active_and_retran_path(asoc);
>    849	}
>    850	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910035421.GB1778%40archlinux-threadripper.
