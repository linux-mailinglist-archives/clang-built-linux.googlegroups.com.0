Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZWF7HWQKGQE4CKDWLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A2DED1C9
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Nov 2019 06:17:28 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id l123sf10942926ywd.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 22:17:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572758247; cv=pass;
        d=google.com; s=arc-20160816;
        b=brFC21EgLWf3syYHgwUraAlorCtq1xiiMwFtrrNFF+YtV9xYJga2PQIXtixMVeill7
         KShlvQJJi4rpxtC4lPt0x4wN9d1ASSmD5AqqPcFsX9uiaKlGFNq/AMeASPfFKdEg9WSX
         XuYRAeubgg/rETwg0KsE7vA5fvLbAIXnx0eP67vXi+4Sj2rfAh4ebGZ8zI+6zfX3jSGO
         vdc5Yz8ObTdsag+UbilzmtAufaEdw8FcPjgjQHtxZBjZYbJwFj8Vg1aFb2OZS7blIEgZ
         d4Cf3F2h0wdMbIkeSHyUjek0YX/DezNuBbaB/2yb2JHvSdLY22DEGXDShMVoLRgDilMP
         8Ptg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=VUOYuhWUEoxnsNYvI0soEZ/t5+iqV624Qw6stWotF8Q=;
        b=Bp4S3QHgHMk/RZxeioxfOD02N7wSUJEVO0AffL0CVkzyTRfkLWjRr0iTdLgvmt48Vt
         BTuGOrqtw/+jYQD9yhA1i5HpchhAst6PgBtwpfBWmshbp4/VUvwWlnbi/paZEg2HyZZI
         lU1YiK0wtmOSTFzdDMKpE3B8rhr1INPreA/OVgOLweAvLomhKK5Dzqi8mq4flroGeQYH
         nmxRVui1SRlv/d4scsI0T0kj6HZPOkugKMmo8csspGpquhP8nELetCmm78Oi7NPKUP1w
         pkowuj4/Fdrd4RKoDHTuQ3ltQVDl2heUP71drnPPTR8c6lg+5Acn5DIILNxosjOXMFtj
         m8Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ieD4bkrK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VUOYuhWUEoxnsNYvI0soEZ/t5+iqV624Qw6stWotF8Q=;
        b=MKwapvWCzFEJdaTmYfnZf44gKvsXgMHvwrKh623wCp/8Uj48cCpBrOsKfQyBWmso49
         iTRtbjsaCyLlKCOnw9TKXz1HdA+oBbd8+0XDthqUSHn97bXCg6rOYeMfQsHqFdp7h0oa
         M2MpqjRzps9F1KarjnZ9qReIrKpg9YgunkMno2K6PlqKlZYLVZe97aNeWxXhb2Vi/L5z
         Z2nop4TpoiGmJmbwY3AlXZtqR8tE7fCiWfz1NqBUxgXVV0YM8qSitB/AqMY1x7I0a0wv
         /K8JMnCtukREL+opBxN9Hdmou6MmSmm3SUBx6HRkkg1yMnX+tuSyn44ns5MBdBYWKwoc
         ytuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VUOYuhWUEoxnsNYvI0soEZ/t5+iqV624Qw6stWotF8Q=;
        b=AoZhv6p+lQac9wT3T9M+jb5YOralJb/NLLsiBuodknRMnFI5uV0oLKeu/DtmJFGsSs
         2pPaiUIaFEWSZwM3dx4tiVT5faQhmeEApIXPyfEhUPZh2vTOfQBewjs+T7qybGxo4Yu2
         MRp7co9C7m2WffSW5hx2kMETvffKGGYMJhstNKCuuRl+hyHLSd5xw8kQkwVAfr8jzdFD
         tXHTsvKSiHTpJb9EowUT8H9pUrHWWZ0FK82L9uU3aHZ0d9YSfe7XjJb+D1Iqde0v1c+Z
         sUPpPMlrrsSAZU0YDKglafqk3CVY++Au/1LrLwvcED9NDMfjjPpdpTgorEBas3W0FXMq
         pHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VUOYuhWUEoxnsNYvI0soEZ/t5+iqV624Qw6stWotF8Q=;
        b=WQn1ykCsLGBCsc/0LQt2JzNOYNlv6cEkJABKyg9pip7NbOemK6NtrKEK16YlxL2KMz
         5WMTN/o1NMX8QK8FB1twh83P7ovjiQKZnu4vf0nDyr25w6fzolVAXGpN23E0X+fTuyUT
         7ygenV1eASKOs36tR2VYWsBXRUaq7VhQRnKbay8zKUI9YPtq367AgwhcA9XjZpaz0WeR
         CJErx+0ILdOS5ZE2XrZ/IW2eHOu21AAFPSS4IxVd/iGxRcK1U0QnjGuTOcoPg74eYn3d
         c0rAY5kQar/bqgOFyHiwInf9f7JPrp/WLi9uUVDsLwnOX+JMSrTSRy1E6/NAsQ8K6IPF
         FJkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6X86Mh49Z/mTRRLIeSRKyjtdxviB4oDZ9jydFhHBDJkdg8n2L
	ghXhKmiVUSgZjTbvARSvFuM=
X-Google-Smtp-Source: APXvYqz/DSK9TcL5cRR8T+fkB25HvO5ZV3lmI4eGBvqlo0KRTo/SRAOALSKRwetNvq1+1w0zR5kobA==
X-Received: by 2002:a0d:c084:: with SMTP id b126mr15268204ywd.105.1572758246845;
        Sat, 02 Nov 2019 22:17:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:3b81:: with SMTP id i123ls1575983ywa.8.gmail; Sat, 02
 Nov 2019 22:17:26 -0700 (PDT)
X-Received: by 2002:a81:8203:: with SMTP id s3mr16251436ywf.396.1572758246375;
        Sat, 02 Nov 2019 22:17:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572758246; cv=none;
        d=google.com; s=arc-20160816;
        b=X1aX2srivxNUKTasM4UBwIifepaTEcbDBhGMZSVcyQSeqsgjSHu/BCQZzLfunYT2Sv
         15h67CLMnQqSxGjgvw0+HCUnrseUBufK0f1LCqEMFzvBdqS7GECe4hw709+nZQxFnxNa
         zXmF1g8OOnVD2/9SnMwPU93Z7NbdXCTbItkJSF7YiJEhwOR7D+0y4sLeGHnmM+4IIVQg
         Gk6CdegQMvcbNoW8VxjOElvUrwJE/dwkTvvBeDmnI4GydG69es7/TFrmfdWSlxD9v9no
         lcrHh1SQ0GQXQkO2oUe5EX5ExlUBHaZqs//jhZBq9JljxnU+YT4Ar9VIrRB5fXVGX2eK
         ln2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CRUVqyTAw4fkZeTKmFIztChsoYaZvQ7hYqeavYZs9NA=;
        b=oOTCCQ06EOxR/NZ9RkLHeihfe6ZxmPJJ6SdJla+2IN9k50kD1UbljSkhj7PxTXSGOQ
         3iLdg5yDU8lWI/lyHlNvyPZ1biesACABBg+7V+0k/3E6DDqQD4Q2bwY09/4OMT53ROAn
         u87ibed+ZPE9xvPd8AQVR6ZJNNdk1s5+Z8ozCI9UuSSYF6WJ0n8tB2GKsnDwVTMVvUJ2
         a85pLJFDwUI/EiolMdQhA9BBIfvvROdbe75Am6Yanh005aM+VmQwtV7HvgNbiU81NpJB
         42PTb7tM8yxj5C8H0iI8WfCo2YUEY8RXsAiidgPuh+5tkTWFWSDsTNyPnQWycuyJ3lHN
         CNaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ieD4bkrK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u8si848471ybc.2.2019.11.02.22.17.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 22:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id y194so11451247oie.4
        for <clang-built-linux@googlegroups.com>; Sat, 02 Nov 2019 22:17:26 -0700 (PDT)
X-Received: by 2002:aca:d1a:: with SMTP id 26mr1226830oin.136.1572758245541;
        Sat, 02 Nov 2019 22:17:25 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a3sm650326oto.15.2019.11.02.22.17.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Nov 2019 22:17:24 -0700 (PDT)
Date: Sat, 2 Nov 2019 22:17:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tamizh chelvam <tamizhr@codeaurora.org>
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv7 5/6] nl80211: Add netlink attribute to configure TID
 specific tx rate
Message-ID: <20191103051722.GA55266@ubuntu-m2-xlarge-x86>
References: <1572674870-23517-1-git-send-email-tamizhr@codeaurora.org>
 <1572674870-23517-6-git-send-email-tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1572674870-23517-6-git-send-email-tamizhr@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ieD4bkrK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Tamizh,

On Sat, Nov 02, 2019 at 11:37:49AM +0530, Tamizh chelvam wrote:
> Introduce NL80211_TID_CONFIG_ATTR_TX_RATES in nl80211_tid_attr_config
> to accept data TID specific TX bitrate configuration
> through NL80211_CMD_SET_TID_CONFIG command. TID for which the
> this configuration is to be applied is passed in
> NL80211_TID_CONFIG_ATTR_TID attribute. TX bitrate mask values passed
> in NL80211_ATTR_TX_RATES attribute and NL80211_TID_CONFIG_ATTR_TX_RATES
> attribute will have types of the TX rate should be applied. This uses
> nl80211_parse_tx_bitrate_mask to validate and calculate the bitrate
> mask. When the user-space wants this configuration peer specific
> rather than being applied for all the connected stations,
> MAC address of the peer can be passed in NL80211_ATTR_MAC attribute.
> 
> Driver supporting this feature should advertise
> NL80211_EXT_FEATURE_PER_TID_TX_BITRATE_MASK and supporting per-STA data TID
> TX bitrate configuration should advertise
> NL80211_EXT_FEATURE_PER_STA_TX_BITRATE_MASK.
> 
> Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>

Below is a report from the 0day team doing clang builds for us, please
take a look at it when you get a chance. Mixing enums like this usually
means the code is not using the enums properly; if it is intentional,
consider explicitly casting the enum to eliminate the warning.

Cheers,
Nathan

On Sun, Nov 03, 2019 at 11:14:10AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <1572674870-23517-6-git-send-email-tamizhr@codeaurora.org>
> References: <1572674870-23517-6-git-send-email-tamizhr@codeaurora.org>
> TO: Tamizh chelvam <tamizhr@codeaurora.org>
> CC: johannes@sipsolutions.net
> CC: linux-wireless@vger.kernel.org, Tamizh chelvam <tamizhr@codeaurora.org>
> 
> Hi Tamizh,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on mac80211-next/master]
> [also build test WARNING on v5.4-rc5 next-20191031]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Tamizh-chelvam/nl80211-New-netlink-command-for-TID-specific-configuration/20191103-092741
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211-next.git master
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 97725707f488d3f00f94d4c4f2d9e193c302b23c)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net/wireless/nl80211.c:13912:11: warning: implicit conversion from enumeration type 'enum nl80211_tid_config_attr' to different enumeration type 'enum nl80211_attrs' [-Wenum-conversion]
>                            attr = NL80211_TID_CONFIG_ATTR_TX_RATES;
>                                 ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> 
> vim +13912 net/wireless/nl80211.c
> 
>  13805	
>  13806	static int parse_tid_conf(struct cfg80211_registered_device *rdev,
>  13807				  struct nlattr *attrs[],
>  13808				  struct ieee80211_tid_cfg *tid_conf,
>  13809				  struct genl_info *info, const u8 *peer)
>  13810	{
>  13811		struct netlink_ext_ack *extack = info->extack;
>  13812		int err;
>  13813	
>  13814		tid_conf->tid = nla_get_u8(attrs[NL80211_TID_CONFIG_ATTR_TID]);
>  13815		if (attrs[NL80211_TID_CONFIG_ATTR_NOACK]) {
>  13816			err = nl80211_check_tid_config_support(rdev, extack, peer,
>  13817					attrs[NL80211_TID_CONFIG_ATTR_NOACK],
>  13818					NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG,
>  13819					NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG);
>  13820			if (err)
>  13821				return err;
>  13822	
>  13823			tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_NOACK;
>  13824			tid_conf->noack =
>  13825				nla_get_u8(attrs[NL80211_TID_CONFIG_ATTR_NOACK]);
>  13826		}
>  13827	
>  13828		if (nla_get_flag(attrs[NL80211_TID_CONFIG_ATTR_RETRY])) {
>  13829			err = nl80211_check_tid_config_support(rdev, extack, peer,
>  13830					attrs[NL80211_TID_CONFIG_ATTR_RETRY],
>  13831					NL80211_EXT_FEATURE_PER_TID_RETRY_CONFIG,
>  13832					NL80211_EXT_FEATURE_PER_STA_RETRY_CONFIG);
>  13833			if (err)
>  13834				return err;
>  13835	
>  13836			tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_RETRY;
>  13837			if (attrs[NL80211_TID_CONFIG_ATTR_RETRY_SHORT]) {
>  13838				tid_conf->retry_short =
>  13839				nla_get_u8(attrs[NL80211_TID_CONFIG_ATTR_RETRY_SHORT]);
>  13840				if (tid_conf->retry_short >
>  13841						rdev->wiphy.max_data_retry_count)
>  13842					return -EINVAL;
>  13843			} else {
>  13844				/* Use driver default retry count or VIF specific
>  13845				 * retry count
>  13846				 */
>  13847				tid_conf->retry_short = -1;
>  13848			}
>  13849	
>  13850			if (attrs[NL80211_TID_CONFIG_ATTR_RETRY_LONG]) {
>  13851				tid_conf->retry_long =
>  13852				nla_get_u8(attrs[NL80211_TID_CONFIG_ATTR_RETRY_LONG]);
>  13853				if (tid_conf->retry_long >
>  13854						rdev->wiphy.max_data_retry_count)
>  13855					return -EINVAL;
>  13856			} else {
>  13857				/* Use driver default retry count or VIF specific
>  13858				 * retry count
>  13859				 */
>  13860				tid_conf->retry_long = -1;
>  13861			}
>  13862		}
>  13863	
>  13864		if (attrs[NL80211_TID_CONFIG_ATTR_AMPDU_CTRL]) {
>  13865			err = nl80211_check_tid_config_support(rdev, extack, peer,
>  13866					attrs[NL80211_TID_CONFIG_ATTR_AMPDU_CTRL],
>  13867					NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL,
>  13868					NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL);
>  13869			if (err)
>  13870				return err;
>  13871	
>  13872			tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_AMPDU;
>  13873			tid_conf->ampdu =
>  13874				nla_get_u8(attrs[NL80211_TID_CONFIG_ATTR_AMPDU_CTRL]);
>  13875		}
>  13876	
>  13877		if (attrs[NL80211_TID_CONFIG_ATTR_RTSCTS_CTRL]) {
>  13878			err = nl80211_check_tid_config_support(rdev, extack, peer,
>  13879					attrs[NL80211_TID_CONFIG_ATTR_RTSCTS_CTRL],
>  13880					NL80211_EXT_FEATURE_PER_TID_RTSCTS_CTRL,
>  13881					NL80211_EXT_FEATURE_PER_STA_RTSCTS_CTRL);
>  13882			if (err)
>  13883				return err;
>  13884	
>  13885			tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_RTSCTS;
>  13886			tid_conf->rtscts =
>  13887				nla_get_u8(attrs[NL80211_TID_CONFIG_ATTR_RTSCTS_CTRL]);
>  13888		}
>  13889	
>  13890		if (attrs[NL80211_TID_CONFIG_ATTR_TX_RATES_TYPE]) {
>  13891			int idx;
>  13892			enum nl80211_attrs attr;
>  13893	
>  13894			err = nl80211_check_tid_config_support(rdev, extack, peer,
>  13895					attrs[NL80211_TID_CONFIG_ATTR_TX_RATES_TYPE],
>  13896					NL80211_EXT_FEATURE_PER_TID_TX_BITRATE_MASK,
>  13897					NL80211_EXT_FEATURE_PER_STA_TX_BITRATE_MASK);
>  13898			if (err)
>  13899				return err;
>  13900	
>  13901			idx = NL80211_TID_CONFIG_ATTR_TX_RATES_TYPE;
>  13902			tid_conf->txrate_type = nla_get_u8(attrs[idx]);
>  13903	
>  13904			tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_TX_BITRATE;
>  13905			if (tid_conf->txrate_type != NL80211_TX_RATE_AUTOMATIC) {
>  13906				tid_conf->mask =
>  13907					kzalloc(sizeof(struct cfg80211_bitrate_mask),
>  13908						GFP_KERNEL);
>  13909				if (!tid_conf->mask)
>  13910					return -ENOMEM;
>  13911	
>  13912				attr = NL80211_TID_CONFIG_ATTR_TX_RATES;
>  13913				err = nl80211_parse_tx_bitrate_mask(info, attrs, attr,
>  13914								    tid_conf->mask);
>  13915				if (err) {
>  13916					kfree(tid_conf->mask);
>  13917					return err;
>  13918				}
>  13919			} else {
>  13920				tid_conf->mask = NULL;
>  13921			}
>  13922		}
>  13923	
>  13924		return 0;
>  13925	}
>  13926	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191103051722.GA55266%40ubuntu-m2-xlarge-x86.
