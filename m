Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3FJ6H6AKGQEUOGTEMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CC22A0CFA
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 19:01:18 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id n5sf3142449oov.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 11:01:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604080877; cv=pass;
        d=google.com; s=arc-20160816;
        b=u6UM9pSpqokL8LyNwAPqw4MsVlfiatagkstyoqA5lTf5U2hkeoldKR27f+D3+e/lwD
         rxKPValUu91IjgPC7RUuuqeO12Kunj+1iLd0Xwz43CA4DVMqQaDsS9roaX5hqHodZSFL
         /tb3d/U+IhvlO4j615qOIzrtX29sT4Clto1bq7tX6m9WAaNAmvmr276IhETv4m09/Zer
         Lm235KAGBjP/1yNPH/nQFLx0tt5CTebqDKoot0FXklw6RzdB91OxwUDO6H39uSHYJgoE
         w16FIFjBmqRKtd7ewj+aqRzBrJDlpExhvuLnHvWiH6FEG24FOd5iSy+5BlGv6FY4uKzJ
         JKnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=llqD2PM5+5wJpmU5qWNTfWLkRz6OF4EwPpCy+3KLi7w=;
        b=MlfvE1EqDbh3Djcz4gXUuXLO5QI2ngTxc103JEzAAn3r7QapoTCICFczpSSFN3KXme
         GoBz0aNlnFHzh4liGYJt9T7I4KXt237jXK6GDWtrsmSOm+GB2oM24GG1u4QlXm9IEpKK
         P0ZCvAv2D5chth1VRv160KzdKgevu8z1X9D2vyyAK+A/wuYoxWa8aYWBIOIvYUvQFufr
         GSXq+Lzf8GN4Pi8qWfudB79Kt+H8urqBhM0XGVSmQc8jGx0aK5oNzJe0I7eXNLAUOPLx
         BbE5S0c7oYKOv8BmMG9ZMkxkmp0p8QvuPmUXCM8rJna+zj8Xk1WFKDDBzGtHNb9rElm5
         mUEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=llqD2PM5+5wJpmU5qWNTfWLkRz6OF4EwPpCy+3KLi7w=;
        b=lPb95ihWm05V6IRnoFdtK6d+7zJv2TIUYKslnAfKYvDk/A/nukB9igVaD9LQJFzphi
         kPjux4afh32WTASj+IeUhyY2b7JquU9OTNugN7E+bdWAN4BaSTDOoSNeTQG9Ilne6cyt
         FrqTIUeOzqT44sJlpHgaGSQT9D2cq8kiBoeY83+auy8mZvUVX/RWfiafQu9H3adkqc2O
         1wHsX3tpxCivn23jdBxdbyho5qFMEdkdU6IoqpqDqK7hySmtYg9z0JLklB71+WQ4+Ebi
         cH3h0o7CVHiFsQNDco+PUQhbkDFCAmsLRKFfZxRpGHlvKwaU+juHm4w12PDbpKa5vjgG
         q0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=llqD2PM5+5wJpmU5qWNTfWLkRz6OF4EwPpCy+3KLi7w=;
        b=kbGig1wCcEG3CaBbIiAF6GlsgdJkDRvWsLx/N6YLTjNm3Vw/v8SBy+3zgdPrPYoZej
         sZFZu3waG9L1A6LvbzUDQI411io0SgXzlGUijjFAhqlrkr0UrljDV0dt7mx5MV074okc
         rIlLrWZMYxg9klgciDwoUDhLK3TbyHmuHBiy1jQquMQQ7YsLneov82WtT1BFZ2pspSdq
         EFKaJN2nDeimaNQw4AIAX13D1iuHZSmAomPHKZJjCLRBoLI367QxD7+crHtJ/m/DP5ak
         f+1fAO8dER+y5fDZLnN4/KgVKwhpEMIfFH0wMEZD5rwUV6tZcgr0N98MbLs8d8DZ0vBA
         a7aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530u5mxlYnAt48+4mVtQTFkL5Zhpj015gyFejvn4Zz/oG0N0Udcb
	IVLSGL3bB1RczSkiXJG+Lkk=
X-Google-Smtp-Source: ABdhPJwo1INr77o4QP90XKuckoOTAfe6hb4UKe2rBRip93B7nl2o1IgO06B6l+8JA34EXkpcXkvXRA==
X-Received: by 2002:a9d:73d2:: with SMTP id m18mr2521221otk.53.1604080876875;
        Fri, 30 Oct 2020 11:01:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5283:: with SMTP id g125ls1775958oib.9.gmail; Fri, 30
 Oct 2020 11:01:16 -0700 (PDT)
X-Received: by 2002:aca:57d5:: with SMTP id l204mr2559294oib.63.1604080876309;
        Fri, 30 Oct 2020 11:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604080876; cv=none;
        d=google.com; s=arc-20160816;
        b=nbrG5ZcBEIiJockCA1tKo9ePfWlo+wyDh+76tIGmGbcmD585o1RWgBObVAovzBboc7
         iYqeQB45n4Jh0xGzAr+VVEl24Q4Cz7iTycq2FcF5hCoz/bIWbLsYQ7njYxKcwYbsDapX
         pER+9gVu5L0pvujh+r4uaXmPFFDegv+BAeKDanZrndt/vL8SBDze0mPBJmfctIZbcOcW
         cDu+EfBGVmJxeELZRFn/Z+8KiRLt7hW7u7QejH2vpaM+gbB0J3jfLLdt3Qd3JC/trfSG
         7Fsg8o9SB3kZI4URIpTVInEnLJL43u2WNWlUSoMW/ogU8BB4b5txbl/kILeyb63RYKSH
         yOyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=RjwS4obyj3R5d5Bt9lkFq8e1EHGouwN4NlPfHEjFYfs=;
        b=UhzvjwHpOJT/eQHoONeSi5Q8LdE416IzAw8ujDzQ3/UbUUIvzBlGwFy7vIcUXeUgzS
         pLMDesiglJBD6uckx2dPiGRywM/RIoKWty62s0vggbUtj0YnOZZHgJ2U+q0CIi1A/Zuf
         eoEcyz/CL4/p8OQjE4fdzzviqopSOIoDCCBMb5Bdk+Ixy2b/LbxIPYqcSOOnujXFqNXW
         6cgQEgLuHVmCpI+9yIQzIXYVzJ1H3UJQPKTD07UJKwiI9XruckcYesSvAgwnBP3fIxxm
         RURX4cd8aru5a4dj+VFLgSt05Zh2Y5r1cfk5RpLR39X5azT+IRdF5Dlyr52F5LiX8mII
         eOOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id d22si655838ooj.1.2020.10.30.11.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 11:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: GnOXeY90bTIciCMNqc7yCU0NmJK4OG4yA4tj7bDPdeK5Bj4kx3FfE0MpMEMBHOBVdikJgSRr6B
 qsfCxo+D+NKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="253351066"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
   d="gz'50?scan'50,208,50";a="253351066"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 11:01:15 -0700
IronPort-SDR: M9ekzHy0uqdhbn9pTS6nHCE0bkFTjlTPfLhpYQEKTpDHNBrECWgbbiM7VvrlzQofKaWu42O7dL
 FXJV8QU+2/lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
   d="gz'50?scan'50,208,50";a="527192045"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 30 Oct 2020 11:01:11 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kYYi6-0000G0-SV; Fri, 30 Oct 2020 18:01:10 +0000
Date: Sat, 31 Oct 2020 02:00:38 +0800
From: kernel test robot <lkp@intel.com>
To: Howard Chung <howardchung@google.com>, linux-bluetooth@vger.kernel.org,
	marcel@holtmann.org, luiz.dentz@gmail.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	alainm@chromium.org, mmandlik@chromium.orgi, mcchou@chromium.org,
	Howard Chung <howardchung@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Johan Hedberg <johan.hedberg@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 5/5] Bluetooth: Add toggle to switch off interleave
 scan
Message-ID: <202010310158.OFevOI4X-lkp@intel.com>
References: <20201030163529.v6.5.I756c1fecc03bcc0cd94400b4992cd7e743f4b3e2@changeid>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <20201030163529.v6.5.I756c1fecc03bcc0cd94400b4992cd7e743f4b3e2@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Howard,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on bluetooth-next/master]
[also build test WARNING on net-next/master net/master v5.10-rc1 next-20201030]
[cannot apply to bluetooth/master sparc-next/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Howard-Chung/Bluetooth-Interleave-with-allowlist-scan/20201030-171045
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth-next.git master
config: arm64-randconfig-r016-20201030 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project fa5a13276764a2657b3571fa3c57b07ee5d2d661)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/20ec572cf329be621588cca7150ec51d702fdfac
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Howard-Chung/Bluetooth-Interleave-with-allowlist-scan/20201030-171045
        git checkout 20ec572cf329be621588cca7150ec51d702fdfac
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/bluetooth/mgmt_config.c:202:14: warning: format specifies type 'size_t' (aka 'unsigned long') but the argument has type 'u8' (aka 'unsigned char') [-Wformat]
                                       len, exp_type_len, type);
                                            ^~~~~~~~~~~~
   include/net/bluetooth/bluetooth.h:186:38: note: expanded from macro 'bt_dev_warn'
           BT_WARN("%s: " fmt, (hdev)->name, ##__VA_ARGS__)
                          ~~~                  ^~~~~~~~~~~
   include/net/bluetooth/bluetooth.h:174:47: note: expanded from macro 'BT_WARN'
   #define BT_WARN(fmt, ...)       bt_warn(fmt "\n", ##__VA_ARGS__)
                                           ~~~         ^~~~~~~~~~~
   1 warning generated.

vim +202 net/bluetooth/mgmt_config.c

   127	
   128	int set_def_system_config(struct sock *sk, struct hci_dev *hdev, void *data,
   129				  u16 data_len)
   130	{
   131		u16 buffer_left = data_len;
   132		u8 *buffer = data;
   133	
   134		if (buffer_left < sizeof(struct mgmt_tlv)) {
   135			return mgmt_cmd_status(sk, hdev->id,
   136					       MGMT_OP_SET_DEF_SYSTEM_CONFIG,
   137					       MGMT_STATUS_INVALID_PARAMS);
   138		}
   139	
   140		/* First pass to validate the tlv */
   141		while (buffer_left >= sizeof(struct mgmt_tlv)) {
   142			const u8 len = TO_TLV(buffer)->length;
   143			u8 exp_type_len;
   144			const u16 exp_len = sizeof(struct mgmt_tlv) +
   145					    len;
   146			const u16 type = le16_to_cpu(TO_TLV(buffer)->type);
   147	
   148			if (buffer_left < exp_len) {
   149				bt_dev_warn(hdev, "invalid len left %d, exp >= %d",
   150					    buffer_left, exp_len);
   151	
   152				return mgmt_cmd_status(sk, hdev->id,
   153						MGMT_OP_SET_DEF_SYSTEM_CONFIG,
   154						MGMT_STATUS_INVALID_PARAMS);
   155			}
   156	
   157			/* Please see mgmt-api.txt for documentation of these values */
   158			switch (type) {
   159			case 0x0000:
   160			case 0x0001:
   161			case 0x0002:
   162			case 0x0003:
   163			case 0x0004:
   164			case 0x0005:
   165			case 0x0006:
   166			case 0x0007:
   167			case 0x0008:
   168			case 0x0009:
   169			case 0x000a:
   170			case 0x000b:
   171			case 0x000c:
   172			case 0x000d:
   173			case 0x000e:
   174			case 0x000f:
   175			case 0x0010:
   176			case 0x0011:
   177			case 0x0012:
   178			case 0x0013:
   179			case 0x0014:
   180			case 0x0015:
   181			case 0x0016:
   182			case 0x0017:
   183			case 0x0018:
   184			case 0x0019:
   185			case 0x001a:
   186			case 0x001b:
   187			case 0x001d:
   188			case 0x001e:
   189				exp_type_len = sizeof(u16);
   190				break;
   191			case 0x001f:
   192				exp_type_len = sizeof(u8);
   193				break;
   194			default:
   195				exp_type_len = 0;
   196				bt_dev_warn(hdev, "unsupported parameter %u", type);
   197				break;
   198			}
   199	
   200			if (exp_type_len && len != exp_type_len) {
   201				bt_dev_warn(hdev, "invalid length %d, exp %zu for type %d",
 > 202					    len, exp_type_len, type);
   203	
   204				return mgmt_cmd_status(sk, hdev->id,
   205					MGMT_OP_SET_DEF_SYSTEM_CONFIG,
   206					MGMT_STATUS_INVALID_PARAMS);
   207			}
   208	
   209			buffer_left -= exp_len;
   210			buffer += exp_len;
   211		}
   212	
   213		buffer_left = data_len;
   214		buffer = data;
   215		while (buffer_left >= sizeof(struct mgmt_tlv)) {
   216			const u8 len = TO_TLV(buffer)->length;
   217			const u16 exp_len = sizeof(struct mgmt_tlv) +
   218					    len;
   219			const u16 type = le16_to_cpu(TO_TLV(buffer)->type);
   220	
   221			switch (type) {
   222			case 0x0000:
   223				hdev->def_page_scan_type = TLV_GET_LE16(buffer);
   224				break;
   225			case 0x0001:
   226				hdev->def_page_scan_int = TLV_GET_LE16(buffer);
   227				break;
   228			case 0x0002:
   229				hdev->def_page_scan_window = TLV_GET_LE16(buffer);
   230				break;
   231			case 0x0003:
   232				hdev->def_inq_scan_type = TLV_GET_LE16(buffer);
   233				break;
   234			case 0x0004:
   235				hdev->def_inq_scan_int = TLV_GET_LE16(buffer);
   236				break;
   237			case 0x0005:
   238				hdev->def_inq_scan_window = TLV_GET_LE16(buffer);
   239				break;
   240			case 0x0006:
   241				hdev->def_br_lsto = TLV_GET_LE16(buffer);
   242				break;
   243			case 0x0007:
   244				hdev->def_page_timeout = TLV_GET_LE16(buffer);
   245				break;
   246			case 0x0008:
   247				hdev->sniff_min_interval = TLV_GET_LE16(buffer);
   248				break;
   249			case 0x0009:
   250				hdev->sniff_max_interval = TLV_GET_LE16(buffer);
   251				break;
   252			case 0x000a:
   253				hdev->le_adv_min_interval = TLV_GET_LE16(buffer);
   254				break;
   255			case 0x000b:
   256				hdev->le_adv_max_interval = TLV_GET_LE16(buffer);
   257				break;
   258			case 0x000c:
   259				hdev->def_multi_adv_rotation_duration =
   260								   TLV_GET_LE16(buffer);
   261				break;
   262			case 0x000d:
   263				hdev->le_scan_interval = TLV_GET_LE16(buffer);
   264				break;
   265			case 0x000e:
   266				hdev->le_scan_window = TLV_GET_LE16(buffer);
   267				break;
   268			case 0x000f:
   269				hdev->le_scan_int_suspend = TLV_GET_LE16(buffer);
   270				break;
   271			case 0x0010:
   272				hdev->le_scan_window_suspend = TLV_GET_LE16(buffer);
   273				break;
   274			case 0x0011:
   275				hdev->le_scan_int_discovery = TLV_GET_LE16(buffer);
   276				break;
   277			case 0x00012:
   278				hdev->le_scan_window_discovery = TLV_GET_LE16(buffer);
   279				break;
   280			case 0x00013:
   281				hdev->le_scan_int_adv_monitor = TLV_GET_LE16(buffer);
   282				break;
   283			case 0x00014:
   284				hdev->le_scan_window_adv_monitor = TLV_GET_LE16(buffer);
   285				break;
   286			case 0x00015:
   287				hdev->le_scan_int_connect = TLV_GET_LE16(buffer);
   288				break;
   289			case 0x00016:
   290				hdev->le_scan_window_connect = TLV_GET_LE16(buffer);
   291				break;
   292			case 0x00017:
   293				hdev->le_conn_min_interval = TLV_GET_LE16(buffer);
   294				break;
   295			case 0x00018:
   296				hdev->le_conn_max_interval = TLV_GET_LE16(buffer);
   297				break;
   298			case 0x00019:
   299				hdev->le_conn_latency = TLV_GET_LE16(buffer);
   300				break;
   301			case 0x0001a:
   302				hdev->le_supv_timeout = TLV_GET_LE16(buffer);
   303				break;
   304			case 0x0001b:
   305				hdev->def_le_autoconnect_timeout =
   306						msecs_to_jiffies(TLV_GET_LE16(buffer));
   307				break;
   308			case 0x0001d:
   309				hdev->advmon_allowlist_duration = TLV_GET_LE16(buffer);
   310				break;
   311			case 0x0001e:
   312				hdev->advmon_no_filter_duration = TLV_GET_LE16(buffer);
   313				break;
   314			case 0x0001f:
   315				hdev->enable_advmon_interleave_scan = TLV_GET_LE8(buffer);
   316				break;
   317			default:
   318				bt_dev_warn(hdev, "unsupported parameter %u", type);
   319				break;
   320			}
   321	
   322			buffer_left -= exp_len;
   323			buffer += exp_len;
   324		}
   325	
   326		return mgmt_cmd_complete(sk, hdev->id,
   327					 MGMT_OP_SET_DEF_SYSTEM_CONFIG, 0, NULL, 0);
   328	}
   329	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010310158.OFevOI4X-lkp%40intel.com.

--VbJkn9YxBvnuCH5J
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VbJkn9YxBvnuCH5J--
