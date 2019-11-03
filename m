Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDGG7HWQKGQEPSATRTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFD1ED1CA
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Nov 2019 06:18:06 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id l22sf10735659iob.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 22:18:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572758284; cv=pass;
        d=google.com; s=arc-20160816;
        b=t7NgX88393WcxaBW0jwatA1Nn9jvflIRaKWCmBJNO3H18KAzKDZPauTDsaXTCwLTD8
         ECz3hsMNEp3+0Gv2+6u7M2jgbSYjLIFip8aeV2OBt+Y0mSaKXTVRXS46/RoDYkd38S32
         gCEZEl5NN5ibf6XwMvVeX1Pqnis2lkREBRBWwf6HAlV0qJzKTRr+waodYc9HXXaQyekS
         E+Ip12xzeefVijvK6uoAtkjzuvFQvHd1xlxWTc8CiAh7W2aU1CixEY3fuBprFVIJyQFS
         cuOeuIardy3u2JgAKCNKNW7HupTpePX3SLZf0Yy00F0QZpT4MGgPJJvU+rP4idj6uIQg
         ke2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=6AteUQ5HFFbDWCjeBeeszqDwOvtyhntvR+29S5a+KJk=;
        b=mFNfFwOMQbNzaqxr8hHTVjlMAtWGPGriQHgQFpvEUZt4JHkITuGga6SoBoqwe3mxp/
         y0vlD7TmXhANpt9UL8oYnHQTVfDDpRlL+0AmBu6QqVzpnMzKnWbA05gnArIhNud+bcb8
         NBwCNxSwh3A1iqQ+skmU0R8e79iEXuGHSoQ85jGGHCwZnXNw0b5Or66BbqFLl4TT4R7u
         v2SLwKb8UqGfdx9Oe+mgBlX7sX9DjsPcLKlS5rnd1+KYmKrLsV1S44b9LmCTr8mOIyy7
         E9+7FKP3gAhRQa6tWQDh6E6BXE7lu4Imaj3CE/rMIIApPE27kbAnWOuR9NnEThBrbVH1
         SZ2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GLUkbFRZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6AteUQ5HFFbDWCjeBeeszqDwOvtyhntvR+29S5a+KJk=;
        b=gsVk/6rZm0zM36XVa8kN7FoB2ojBRbEcAt3d+v5F7VRvEFsFZbgICDwI+KyNaL9TvN
         Yb3YvfsqmQ+nf9kDSacVd2rtUFyIF+mJc6vciu0fdtifcWEESG+c736af54TciJXmZfg
         bRAbsnLhmnAtKEBQogBri4Lmf43FsuRtWmszdbSAFEIRw7LWKwrh6Uo9GAUt/db4BiOp
         Us/Yd/peNfEfb3QNlDEsZhpIS2WQZvyLN5WKTlD9WSLj8St4GFiLvr8YexCLQMBMD0DO
         OpBxu9Pv0IXbBshtKY1tqkdXHAYc2f1UnGKgRCkNUMtHBWVVY7UvRn4vjZOGi3X9wk+C
         ar9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6AteUQ5HFFbDWCjeBeeszqDwOvtyhntvR+29S5a+KJk=;
        b=B3k11J5Oyo5wQ9+ESD0ACeZSCAiY8Uf2wJZdJKjB9WpTMy3wxWqGIJi/dipwAm9+E4
         K2V+WrpZKh6GRgKLaQVaSLPOK0wTOgjxwjQ2Ksb8NXevEiTGsarZ9Y1Jqgr70/L5DzdR
         JTELZ+HIZwlDn6KCUQcCYbbB2avpzSmQYbrgYDfmiZmmK6peiu4B99xRvFTMuhLfab3K
         PuEyzlpvJoMIuA2G4meD/yW2Y76QjlTdO2NBWBZi4n/CqFCcV58oyqnj/YlEsKadX+At
         cb1G1GKP5pSPY1Vau4t/rkCvWrfBWoZv7qmvTXutG45zd+i6WqOgQvlKe5zOnj1yOT7l
         9qAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6AteUQ5HFFbDWCjeBeeszqDwOvtyhntvR+29S5a+KJk=;
        b=KPA6x36ml5k4s0sPXqd1QO1BarY4IMY5iMoNxacpj6VLy65MHjkiL2smEjjMvXGZ1p
         YiLRFdoc4rbS1/6IfK/p5TOMOz6u6W/DB7u+lYScwW5RkEUXbSLWFwDo4DPpHpmLYoEs
         FLYrbd+dk+lLcI4Gl3iDVvVWMQua67HVy6S8fm7OJck7o9KuWLkDeT1OgdL58seP47zY
         lTfto/3ybi66rV3yNEpSxdUH38b0hSTfXNAhw5dIt1f64bTrzPKZ1rioGjT9Ocd5/nOl
         0Ovf0nKILIuSV/vCX5tc6A0GcDnVUuD5skaAG5r/oqUP3uX1/44N6805QRcznriSOgqx
         JRZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUE2+UiNyWCIH6t8A31RHpCAIy0D/xJojJ/Xv+UqzRmFtBxvy6h
	bB8YRn6KnxYj89Bs4/SPq6Q=
X-Google-Smtp-Source: APXvYqxAc5p8zJYA6VMzuaBZb06giZ7QiIRBXrwDxgj6jYyxgQSnPXKBkmkXHHf5bI9J1eOURZaB7Q==
X-Received: by 2002:a92:490f:: with SMTP id w15mr21568894ila.187.1572758284580;
        Sat, 02 Nov 2019 22:18:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9309:: with SMTP id l9ls1788871ion.3.gmail; Sat, 02 Nov
 2019 22:18:04 -0700 (PDT)
X-Received: by 2002:a6b:b9d5:: with SMTP id j204mr17698108iof.129.1572758284228;
        Sat, 02 Nov 2019 22:18:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572758284; cv=none;
        d=google.com; s=arc-20160816;
        b=yJ9IdnSWG6QOO7DDz9uExpR2q5WYwzehmFLkomVW9AOrCTJX9egVGuX0EN9e0Ax25y
         v+88qMtRx9UHt6C2rkhrDFwJ0+vBtso4fd8e6Uv70P2eX3fTQCK+hOWH8SgLE1z3WyhS
         zzx4vvKtGHtWbSRinBXbTmH1u2aSyOwm6TTegHLHOxXtN6Fih6O8bOh6pHXKPiQY5rqf
         8CUW2tVA5SsvEs14M0gF3dzDkYJpTicWPMWnBnRdvQDxUC3CgcoPa+UiGsuHBy2H2NbC
         0Qy1GWIbrJP3Kd7OjgmhfuS7zrypYlExjqF3PJ9PBm/ED7UdWeqjFyT1FxFiXoDKh+gR
         3wkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Rn8sAnvOz1XP9R57RF9AAzhayHr/LiYpaDKNoOLDayg=;
        b=0Z90B/pygbK2nWjOFfB/EAwB96TtBnKTQwbxpnQ8T9W+EUYRSsn+geot/KH+5TWY8W
         La6XpxJF0kvlbDtDruWNm+8SoAfx4YAU8IwC7VRxgGplPe13e63QxClRlWzXK8TCeJOe
         r+d9oWKUMRZRFIlEUZKa3/GBF4zcgd0hxcqMyyUssFrD4T9usDwW7AEPlzElbGzeA0Tc
         SCc0MAe8QNFyRHSmXpJq6ZDlzLcmZivwwrtpHWSI4tNZv+Q1pSgF20cn/1lgbGaM2pTd
         zl2SnLDF9PukRJWxe4mcK+PtdcGU7RSzH+W9l671UQUbOiYJR1Ikaxh4dUWAPuCmdpMG
         COgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GLUkbFRZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 75si792646ilw.3.2019.11.02.22.18.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 22:18:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id t4so278931otr.1
        for <clang-built-linux@googlegroups.com>; Sat, 02 Nov 2019 22:18:04 -0700 (PDT)
X-Received: by 2002:a9d:7a84:: with SMTP id l4mr5231058otn.83.1572758283669;
        Sat, 02 Nov 2019 22:18:03 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j8sm3465862oii.19.2019.11.02.22.18.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Nov 2019 22:18:03 -0700 (PDT)
Date: Sat, 2 Nov 2019 22:18:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv7 5/6] nl80211: Add netlink attribute to configure TID
 specific tx rate
Message-ID: <20191103051801.GA55395@ubuntu-m2-xlarge-x86>
References: <201911031127.OYIauj0q%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911031127.OYIauj0q%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GLUkbFRZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
> 

Reported to the author on the mailing list:

https://lore.kernel.org/linux-wireless/20191103051722.GA55266@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191103051801.GA55395%40ubuntu-m2-xlarge-x86.
