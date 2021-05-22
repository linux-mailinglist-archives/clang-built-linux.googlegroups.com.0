Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBO6QUWCQMGQEMFBUM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D238D760
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 22:23:24 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id z14-20020ac8710e0000b029020e9ce69225sf8356964qto.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 13:23:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621715004; cv=pass;
        d=google.com; s=arc-20160816;
        b=hfxANcDCtFYLhVk0x7OgjF8KvVgUgwSaZXrd4LImkdzHff3IlXt7uIHu+jks1VfeeQ
         L9nbKO75E1/09Ni6CZEkY6DxUj2B9EPO6FY8n+cmGTTwjGHtmxszwtE1x0Wfx8sVQIdf
         1VdUhHB5aKuDjmFYHCUNvVYJGIs/9LBWofcocon/dOnjy5sSMO7fLjPTWoTvManB202B
         0oFspKmT1wYHzKf0TtnRi8BQuRONbrAQIkRo+0KE9n8DvAMQ8kkNNEgCnuo3ZKFE1OQs
         pdykZCFKt7Y1//vkq99pKJpjyiAhzqi1Gojy/d7s5A7gbzEgrxClc2WmDGZAUSGsFSJh
         UByg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=3/8dIrs+oQJZJSGWXvDQE/IrwjA7abIx6/QcQ6IzDkE=;
        b=vUrAVVD8mBi2aAgKdKXk+WE3/taRBWzAWnwEkEAhP6lmVLmm2b7+dov/m0bL1kv2QT
         Rj2V7RmhWTjD9F3D/6a8uALRgCEe4eVrZZ9PzEG14mql4PNd880Ov7P2x73SLXsSiijY
         +k5zsST0lQi8pmywNzDVJAAImYxw5Oqij6vGyHZz+w0CUaS+6+m+oK38Lvx2bEhSZi1Y
         IR7dxHJD27vFfe8X2/DlJqDL7DwhXs+6zJGr5tSObrSTPkLr3mLNs9jgsgiVkQLitEdd
         mORsIoOp7BkYm+GSTxQ796wa+LgsqvhWvs9+lzJzX3se65c+KYmzOV7BmQQ2NTnGKy2l
         9VoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/8dIrs+oQJZJSGWXvDQE/IrwjA7abIx6/QcQ6IzDkE=;
        b=q73BResvuqft5F9BKsehMLByNEHHApW2UaizWMS/Ls+DVQ6uyfx7baxJcjPWvIS0TP
         nJ1Wu1YTvy6YRDSmawDIE4GLHC8nCVEBNvSxJcSyysZ6Y+hieuUacKe9f74hNparDwSL
         iP+bvVWyTiVfexl+MUstrEI44YUNszarrOdCRVUQlZekkPBQ6Qx5XAu1wI1cEi6fskdq
         Zdi6TFmVwgPRoyV28z8fFGvEjRJLeQwIJWiQU7x1rifPCupwckTcuVYHBjLNXJhu94+Z
         wAyFLffF8fMSpqVNa3UzkAROGb7PIH3VxCbLG7WJANwZqPkHWgT3uRyKVJ8sOh2LLyq7
         pQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/8dIrs+oQJZJSGWXvDQE/IrwjA7abIx6/QcQ6IzDkE=;
        b=X/2OHO/EzvyMWNq1bhEpYbL9LSWL4xJDEcLp8RPkMra0ziWzEWi/CBQjstek+26jYo
         pWwvMoQ0pJkDIQE13bjXf3zDmn5zTc940QFa8EbrM6STxPM86uqcSx/vqYfg1iDVgq8t
         cZIWgyr+aGqUHXLJC4e7Srf+gyMbVatmtLpLGB8dslmpC9Wm+BSUAPkjuZzCPPAq9Ayu
         bKJmtQdwL/9dTS3wsavT6bj+zzWz3MXQwfKDx6FwWTePtKqApCzIbYi766wXDdru2qGV
         tc8mAcqjyMxw7MxLBGg9KSXIzJexgd5Fv8Jq4fUY2SMau8KYvUpg3E1RKR6eS/4Pav0Y
         KRJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aMzjZNShSpOFNnEe8ytFNAlBehW0HVBQ3tGHJCWupXjxqWxl+
	tCTAIagglBhumlD7ywMJ9OY=
X-Google-Smtp-Source: ABdhPJwkrhqSovMIsv06CtU2jER/YWa6xl/5kgzANPKeNu1x5wEU7siogNDyx9RZyC9/vxsY378iFg==
X-Received: by 2002:a05:622a:170b:: with SMTP id h11mr19051153qtk.330.1621715003529;
        Sat, 22 May 2021 13:23:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:59c8:: with SMTP id f8ls4437624qtf.7.gmail; Sat, 22 May
 2021 13:23:23 -0700 (PDT)
X-Received: by 2002:ac8:67ca:: with SMTP id r10mr18639489qtp.35.1621715002881;
        Sat, 22 May 2021 13:23:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621715002; cv=none;
        d=google.com; s=arc-20160816;
        b=ddudBNuGQEg/6hEdNIhmzUUkcAYy3R+RJzbnsP54aG8yPYMwMZMpAaQ7dK3chRV7+H
         Fm+RFhMz7a1MaqV8a7xI9yDEX+wFHclx4pcw2AKLUzii9iP86l8PWs2ZaasgP0p/fEny
         5XLOLXrhaGMLkCP0rUG1BstBwd7L73mH6pV+kp/2ZdM+FTHLzWZWB4OADuUfY+tAp79H
         6qNbp8xomMTdyGYAmZ8e35dlHU0wMjn5Y0+iaV/MOEOlwO0dJTR7065XImfBmWr1NrM6
         ld/+slNFetvveCGaFM2OQutrEVH/Bhp4uUAuhu4WINy1q+haXpMpq3iLdrUIJUYlEhkt
         8Xpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=t3u0fWeBaigjpMt1/sCXBu3vdYksJ+J6JoGa2KdP1Ic=;
        b=p87hKxQ6PowmGNxVmWb3HMV4sgmRE5GIlrlABBS+NhXM4V1Qk98M1i3YBzuszZjVTU
         aBLD9gwzFY0f6s1XTIa9F02TxB8Dd/k1J+E03H8dxeG5/uGNvCvdtDZxA+eZJCQbz5Cf
         c8vF8ofYf6yvcCBWbX7m/bnhJ3/EruRbgh33Op0vFJeUbOPgMZLYctvGWkHlThiiZM5E
         eCpJEjg6tf2kNGWXj9naL93F8sqV4zUmm/Acnkq5eeBUxrS/UT0fzqQ1GLuBDaTuufuZ
         ab3ukNb9lN1odDg840wwG2NaTColD7EKQwkAV/dlih+9KXN7YTrlft16muBD1ZG4A8OQ
         PBlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 8si977346qtp.5.2021.05.22.13.23.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 May 2021 13:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 0ug0ZS57WYooFgWS7Aop8ulsso9+jXemc1Gu7co3r+yxmkhlTDcgRFp1sFAvIDXHMk4XeV741T
 zCtLTJiX2CDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="262915735"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="262915735"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2021 13:23:20 -0700
IronPort-SDR: vGssdXBKlS985hVhGtwf9NnLlG/VuA5Jw2ZUv7oVNa2t6lFpY8N4rCmITWR8V6zlHQq1zv1Las
 U0+rKLMPQXsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="475086836"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 22 May 2021 13:23:17 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lkY9U-0000QG-Gu; Sat, 22 May 2021 20:23:16 +0000
Date: Sun, 23 May 2021 04:22:33 +0800
From: kernel test robot <lkp@intel.com>
To: Kyle Tso <kyletso@google.com>, linux@roeck-us.net,
	heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	badhri@google.com, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, Kyle Tso <kyletso@google.com>
Subject: Re: [PATCH 1/2] usb: typec: tcpm: Properly interrupt VDM AMS
Message-ID: <202105230455.faAHm2qT-lkp@intel.com>
References: <20210521130121.1470334-2-kyletso@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
In-Reply-To: <20210521130121.1470334-2-kyletso@google.com>
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kyle,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on usb/usb-testing]
[also build test WARNING on v5.13-rc2 next-20210521]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kyle-Tso/Fix-some-VDM-AMS-handling/20210522-205431
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: x86_64-randconfig-a006-20210523 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/6e05980ae46e87d0a409e1e653658ae6fd7b3a32
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Kyle-Tso/Fix-some-VDM-AMS-handling/20210522-205431
        git checkout 6e05980ae46e87d0a409e1e653658ae6fd7b3a32
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/typec/tcpm/tcpm.c:2326:19: warning: equality comparison result unused [-Wunused-comparison]
                   port->vdm_state == VDM_STATE_ERR_BUSY;
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   drivers/usb/typec/tcpm/tcpm.c:2326:19: note: use '=' to turn this equality comparison into an assignment
                   port->vdm_state == VDM_STATE_ERR_BUSY;
                                   ^~
                                   =
   1 warning generated.


vim +2326 drivers/usb/typec/tcpm/tcpm.c

  2313	
  2314	static void tcpm_pd_data_request(struct tcpm_port *port,
  2315					 const struct pd_message *msg)
  2316	{
  2317		enum pd_data_msg_type type = pd_header_type_le(msg->header);
  2318		unsigned int cnt = pd_header_cnt_le(msg->header);
  2319		unsigned int rev = pd_header_rev_le(msg->header);
  2320		unsigned int i;
  2321		enum frs_typec_current partner_frs_current;
  2322		bool frs_enable;
  2323		int ret;
  2324	
  2325		if (tcpm_vdm_ams(port) && type != PD_DATA_VENDOR_DEF) {
> 2326			port->vdm_state == VDM_STATE_ERR_BUSY;
  2327			tcpm_ams_finish(port);
  2328			mod_vdm_delayed_work(port, 0);
  2329		}
  2330	
  2331		switch (type) {
  2332		case PD_DATA_SOURCE_CAP:
  2333			for (i = 0; i < cnt; i++)
  2334				port->source_caps[i] = le32_to_cpu(msg->payload[i]);
  2335	
  2336			port->nr_source_caps = cnt;
  2337	
  2338			tcpm_log_source_caps(port);
  2339	
  2340			tcpm_validate_caps(port, port->source_caps,
  2341					   port->nr_source_caps);
  2342	
  2343			/*
  2344			 * Adjust revision in subsequent message headers, as required,
  2345			 * to comply with 6.2.1.1.5 of the USB PD 3.0 spec. We don't
  2346			 * support Rev 1.0 so just do nothing in that scenario.
  2347			 */
  2348			if (rev == PD_REV10) {
  2349				if (port->ams == GET_SOURCE_CAPABILITIES)
  2350					tcpm_ams_finish(port);
  2351				break;
  2352			}
  2353	
  2354			if (rev < PD_MAX_REV)
  2355				port->negotiated_rev = rev;
  2356	
  2357			if (port->pwr_role == TYPEC_SOURCE) {
  2358				if (port->ams == GET_SOURCE_CAPABILITIES)
  2359					tcpm_pd_handle_state(port, SRC_READY, NONE_AMS, 0);
  2360				/* Unexpected Source Capabilities */
  2361				else
  2362					tcpm_pd_handle_msg(port,
  2363							   port->negotiated_rev < PD_REV30 ?
  2364							   PD_MSG_CTRL_REJECT :
  2365							   PD_MSG_CTRL_NOT_SUPP,
  2366							   NONE_AMS);
  2367			} else if (port->state == SNK_WAIT_CAPABILITIES) {
  2368			/*
  2369			 * This message may be received even if VBUS is not
  2370			 * present. This is quite unexpected; see USB PD
  2371			 * specification, sections 8.3.3.6.3.1 and 8.3.3.6.3.2.
  2372			 * However, at the same time, we must be ready to
  2373			 * receive this message and respond to it 15ms after
  2374			 * receiving PS_RDY during power swap operations, no matter
  2375			 * if VBUS is available or not (USB PD specification,
  2376			 * section 6.5.9.2).
  2377			 * So we need to accept the message either way,
  2378			 * but be prepared to keep waiting for VBUS after it was
  2379			 * handled.
  2380			 */
  2381				port->ams = POWER_NEGOTIATION;
  2382				port->in_ams = true;
  2383				tcpm_set_state(port, SNK_NEGOTIATE_CAPABILITIES, 0);
  2384			} else {
  2385				if (port->ams == GET_SOURCE_CAPABILITIES)
  2386					tcpm_ams_finish(port);
  2387				tcpm_pd_handle_state(port, SNK_NEGOTIATE_CAPABILITIES,
  2388						     POWER_NEGOTIATION, 0);
  2389			}
  2390			break;
  2391		case PD_DATA_REQUEST:
  2392			/*
  2393			 * Adjust revision in subsequent message headers, as required,
  2394			 * to comply with 6.2.1.1.5 of the USB PD 3.0 spec. We don't
  2395			 * support Rev 1.0 so just reject in that scenario.
  2396			 */
  2397			if (rev == PD_REV10) {
  2398				tcpm_pd_handle_msg(port,
  2399						   port->negotiated_rev < PD_REV30 ?
  2400						   PD_MSG_CTRL_REJECT :
  2401						   PD_MSG_CTRL_NOT_SUPP,
  2402						   NONE_AMS);
  2403				break;
  2404			}
  2405	
  2406			if (rev < PD_MAX_REV)
  2407				port->negotiated_rev = rev;
  2408	
  2409			if (port->pwr_role != TYPEC_SOURCE || cnt != 1) {
  2410				tcpm_pd_handle_msg(port,
  2411						   port->negotiated_rev < PD_REV30 ?
  2412						   PD_MSG_CTRL_REJECT :
  2413						   PD_MSG_CTRL_NOT_SUPP,
  2414						   NONE_AMS);
  2415				break;
  2416			}
  2417	
  2418			port->sink_request = le32_to_cpu(msg->payload[0]);
  2419	
  2420			if (port->vdm_sm_running && port->explicit_contract) {
  2421				tcpm_pd_handle_msg(port, PD_MSG_CTRL_WAIT, port->ams);
  2422				break;
  2423			}
  2424	
  2425			if (port->state == SRC_SEND_CAPABILITIES)
  2426				tcpm_set_state(port, SRC_NEGOTIATE_CAPABILITIES, 0);
  2427			else
  2428				tcpm_pd_handle_state(port, SRC_NEGOTIATE_CAPABILITIES,
  2429						     POWER_NEGOTIATION, 0);
  2430			break;
  2431		case PD_DATA_SINK_CAP:
  2432			/* We don't do anything with this at the moment... */
  2433			for (i = 0; i < cnt; i++)
  2434				port->sink_caps[i] = le32_to_cpu(msg->payload[i]);
  2435	
  2436			partner_frs_current = (port->sink_caps[0] & PDO_FIXED_FRS_CURR_MASK) >>
  2437				PDO_FIXED_FRS_CURR_SHIFT;
  2438			frs_enable = partner_frs_current && (partner_frs_current <=
  2439							     port->new_source_frs_current);
  2440			tcpm_log(port,
  2441				 "Port partner FRS capable partner_frs_current:%u port_frs_current:%u enable:%c",
  2442				 partner_frs_current, port->new_source_frs_current, frs_enable ? 'y' : 'n');
  2443			if (frs_enable) {
  2444				ret  = port->tcpc->enable_frs(port->tcpc, true);
  2445				tcpm_log(port, "Enable FRS %s, ret:%d\n", ret ? "fail" : "success", ret);
  2446			}
  2447	
  2448			port->nr_sink_caps = cnt;
  2449			port->sink_cap_done = true;
  2450			if (port->ams == GET_SINK_CAPABILITIES)
  2451				tcpm_set_state(port, ready_state(port), 0);
  2452			/* Unexpected Sink Capabilities */
  2453			else
  2454				tcpm_pd_handle_msg(port,
  2455						   port->negotiated_rev < PD_REV30 ?
  2456						   PD_MSG_CTRL_REJECT :
  2457						   PD_MSG_CTRL_NOT_SUPP,
  2458						   NONE_AMS);
  2459			break;
  2460		case PD_DATA_VENDOR_DEF:
  2461			tcpm_handle_vdm_request(port, msg->payload, cnt);
  2462			break;
  2463		case PD_DATA_BIST:
  2464			port->bist_request = le32_to_cpu(msg->payload[0]);
  2465			tcpm_pd_handle_state(port, BIST_RX, BIST, 0);
  2466			break;
  2467		case PD_DATA_ALERT:
  2468			tcpm_handle_alert(port, msg->payload, cnt);
  2469			break;
  2470		case PD_DATA_BATT_STATUS:
  2471		case PD_DATA_GET_COUNTRY_INFO:
  2472			/* Currently unsupported */
  2473			tcpm_pd_handle_msg(port, port->negotiated_rev < PD_REV30 ?
  2474					   PD_MSG_CTRL_REJECT :
  2475					   PD_MSG_CTRL_NOT_SUPP,
  2476					   NONE_AMS);
  2477			break;
  2478		default:
  2479			tcpm_pd_handle_msg(port, port->negotiated_rev < PD_REV30 ?
  2480					   PD_MSG_CTRL_REJECT :
  2481					   PD_MSG_CTRL_NOT_SUPP,
  2482					   NONE_AMS);
  2483			tcpm_log(port, "Unrecognized data message type %#x", type);
  2484			break;
  2485		}
  2486	}
  2487	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105230455.faAHm2qT-lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--YZ5djTAD1cGYuMQK--
