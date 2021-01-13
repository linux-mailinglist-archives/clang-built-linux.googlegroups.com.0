Return-Path: <clang-built-linux+bncBD26TVH6RINBBKFO7L7QKGQEPQ66LJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3702F44A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 07:46:01 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id v7sf1319811ioj.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:46:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610520360; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxVsN1E3ffth4dXuSH0/4cx1MagxObOKYABsZ+xt1Q0TNZYzr+VFyzRrpSqvGrF2NT
         vJXzrrm5Qs4bjVNB2oh4BqN+qtMUpULj9YFqz++ltff6GjlO0NP2fmOwcHecKzEDDmSs
         8/esL2dfNlCHk0DShIevRMvzOsRwXnez01cFlimzPxXRJL/Za3ISvaYW38em7XYyUYOp
         e5NvTAli7IQaZ16zhNgkmnoaZ+szVzzXAIW0Wvw1QVUeGXl3LsOvYGJ2opTPIb6pI8Nx
         /zA4q1T6BkuAeRZDJijoIxOBUnTvXYVFtDLII3reGFMqKpESapVNDtAp13AgxgfsSG3g
         scuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=HHaxqkscJz0ef6T/61UWOXPjz1I0XJlV8zLeJPvzfp0=;
        b=A8G+rZJAUpu91i8hx+lJiLfSD05ghOfEOdZKbUn41+sd9R3DWloqeqM+p5uxrLgl28
         o3/ia+HmYF1HyiaPojR6UeCrx+Hq/UbVRmhor/gCxkhGU2ODpeuyaEnJn5AloTO8vhi5
         QjZGpmFSa5r3Oo3KB4YOw0jL5BxGxKoEgAac0AZZ7VTnMmpZAAsYwnB0pXJPJPVIg7/j
         cDxi8legQ2WKPy9P+/Hs6YM+r/DmUM35MLSt5dwg/43ns00+slYMiIIiXuBkXLRTbE3+
         FU3dWBdh2Q4Uijphp6NYBuOAbmtbXkubieyZ12PzbJK3HlpN9oyFMW64qd3BvFkPnaKP
         YHzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HHaxqkscJz0ef6T/61UWOXPjz1I0XJlV8zLeJPvzfp0=;
        b=Pl09CfgSAg9RbFANyo4peG0TZTRIqjVU0GW9X/9T/UMjCDffRwiI1XacCQc5ObL3ai
         9LD3lEWN1v5pp6TFHTV9gqZZMQ+OnleydjNzIK00BJhJP5sKBIZx9jCht+pqoUGaIUgA
         CYhvoQH0W6WLYSPPLGjV6seC05Z3IgzQhedxxCF5up012axcHvVAo7Yyr4rvtW/4lmRh
         sKOW/1Px+vsRajUuTNmZ0fOaGcEkqiwIPbwTr0q+hAoBEJJi1X71/0+TdQIflU1BS8Ej
         6t4AmaJZXukwUAMfjdSfmmsl11McpKj5ju5zbe0N9DsfcWSu2SR2v4Dt7l4Cu0OEbHJX
         9h2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HHaxqkscJz0ef6T/61UWOXPjz1I0XJlV8zLeJPvzfp0=;
        b=XLkQ4i2d74R8OSe3foR/TgV2tXkjEnDVsW+ZJ1+E07JLi7K1Tm8jLNuJo+Vck9R2F3
         oT6+e3cicmBR7yoqspKHa9H4FWl9Pi4kUEWhfChuQk2iNtBB1drCxsitYd3igqkASafY
         5emkT3ZHHfflD7G0+9RN2V1c9zIShYwBoxUNwCvBSWgFBPFYNdgHP4SQsalMG3Nnye6M
         LukKqGpOvPytZOu7ezoGjStkW0yJ9+tLbZXlWR9GPQalLqz+Mnv+m0dOXruvLIVw2MZQ
         MY7mHFLRx5oBYzxUeRx/jWY3/CCom9MEZzDoSGhXb45+JGwZHTSIYdUfV8/YGhJSeCsN
         tPRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dWwpBig9x6NT3DQoIhnaTF14vhK69PFU3Vr4JxbZxhobUaWpG
	n+LO9n3qGl/3hgrAc4uuNhg=
X-Google-Smtp-Source: ABdhPJwNcZjLh8NEmuPyYI8YWxrdHAg+CVN2zg9uDu2Q3ozO4f9W3fh+OxmtE7RXZ/hJdLn1FlY4dA==
X-Received: by 2002:a5e:820c:: with SMTP id l12mr667014iom.50.1610520360286;
        Tue, 12 Jan 2021 22:46:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3609:: with SMTP id d9ls324326ila.4.gmail; Tue, 12 Jan
 2021 22:45:59 -0800 (PST)
X-Received: by 2002:a92:7d14:: with SMTP id y20mr1000926ilc.196.1610520359818;
        Tue, 12 Jan 2021 22:45:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610520359; cv=none;
        d=google.com; s=arc-20160816;
        b=H+5lDbbxIxQePxd8iVJiMO+1HmPDlK9lgRZ61BG7MnY2/jypMSatcnVozqFXSniKNH
         4tv5BY9bdrBRUBPYDZElsDoZolTQaeF7McjzIllHzovSLsUEPpL2Aq35vaY6+cxKI4am
         rZ944WzjY8IcE/pTzyiwTXQ27Dn0bNthGOq84eSTNXvv5OY1DcB2H/zl5/Avyun0DlPq
         zwDPOaRH92B34VLBgb2wiBQ14Um9Grr9o/qGmISiQsxvTHvBVeVP4JBarlz9QQ8/cJJQ
         gPx6u9wTSIR8eP/m8E9sgXYWbrgEvbF1vg0dxdOIwB0XqDt9F7s16drOzeZGBjLmq/T5
         TbJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=Bib/6RLrHfzcq0B/g7WhQcVGbnOT6edwO7cLQzn66Gw=;
        b=jekU2rJrJCboRuUBOPYoaio0xL/DBpgvB3ao/Q/OOiAwpdVnNxhWiEocFMaHKMfqkB
         1gLD4lkP21ZcHIAGxmirjDwft6im0vtarN+PBBI4+SQgqx8RvgdP5lQNetaC07XUSUeU
         l5b+fPTuUYf3qadTflEE2S7gr6Biz4//oAakHKCDWq770fz+iAci1L4VWBtGj2bEJlag
         ByDLlBH6/tW8xmmv2Mx9pnxIxmxSfs2TjQ3z9HMxKvEiEc78AgQsZwa0Uiu0d5o4T/6G
         9JsHzV6fHNj99/RBtgMCTjSGct8tFt5zDISGwJNVjDB7p3xhV+zboa3+FaUpdFgr744+
         GO0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id k131si63294iof.1.2021.01.12.22.45.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 22:45:59 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: DQg05xeNU+Fgr8VWP4tU7+rINXZgbohthIH1tsv7YRKRAERaX9YDTfU9r2cvPi9Fp4zAMJWfZl
 PA3pCU1cFJxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="196794199"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; 
   d="scan'208";a="196794199"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2021 22:45:58 -0800
IronPort-SDR: oDlAFkGhPkRiH7y0b2QdTIa5WkQ7XIPj8cz4oMdyVSDngCk61ZLm8VmQMb9/Gr50AEE5SvFl4B
 W6DS+/dBdNdQ==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; 
   d="scan'208";a="381729761"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2021 22:45:55 -0800
Subject: Re: [kbuild-all] Re: [linux-stable-rc:linux-4.19.y 1441/2773]
 drivers/base/node.c:429:5: warning: no previous prototype for function
 'register_mem_block_under_node_early'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Souptick Joarder <jrdr.linux@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Laurent Dufour
 <ldufour@linux.ibm.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Andrew Morton
 <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 David Hildenbrand <david@redhat.com>, Oscar Salvador <osalvador@suse.de>
References: <202101100936.GwZyiMDo-lkp@intel.com>
 <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
 <X/yvHIekJZV9WLvO@kroah.com>
 <CAFqt6zZwpaPxcuGwbyxg=TKyNXnW3PzOqodiCArOU=Mkds_RVA@mail.gmail.com>
 <X/34yJ07vHVLk0MP@kroah.com> <X/349+s18NvENgQP@kroah.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <7fc5e732-ee2e-a63b-c018-0fc89efe78c1@intel.com>
Date: Wed, 13 Jan 2021 14:45:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <X/349+s18NvENgQP@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 1/13/21 3:31 AM, Greg Kroah-Hartman wrote:
> On Tue, Jan 12, 2021 at 08:30:16PM +0100, Greg Kroah-Hartman wrote:
>> On Wed, Jan 13, 2021 at 12:49:52AM +0530, Souptick Joarder wrote:
>>> On Tue, Jan 12, 2021 at 1:32 AM Greg Kroah-Hartman
>>> <gregkh@linuxfoundation.org> wrote:
>>>> On Tue, Jan 12, 2021 at 12:48:22AM +0530, Souptick Joarder wrote:
>>>>> On Sun, Jan 10, 2021 at 6:33 AM kernel test robot <lkp@intel.com> wrote:
>>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
>>>>>> head:   610bdbf6a174c9a91e34e276a9594114b44bef74
>>>>>> commit: b6f69f72c15d7f973f5709c5351f378f235b3654 [1441/2773] mm: don't rely on system state to detect hot-plug operations
>>>>>> config: x86_64-randconfig-a001-20210110 (attached as .config)
>>>>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
>>>>>> reproduce (this is a W=1 build):
>>>>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>>>          chmod +x ~/bin/make.cross
>>>>>>          # install x86_64 cross compiling tool for clang build
>>>>>>          # apt-get install binutils-x86-64-linux-gnu
>>>>>>          # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b6f69f72c15d7f973f5709c5351f378f235b3654
>>>>>>          git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>>>>>>          git fetch --no-tags linux-stable-rc linux-4.19.y
>>>>>>          git checkout b6f69f72c15d7f973f5709c5351f378f235b3654
>>>>>>          # save the attached .config to linux build tree
>>>>>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>>>>>
>>>>>> If you fix the issue, kindly add following tag as appropriate
>>>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>>>
>>>>>> All warnings (new ones prefixed by >>):
>>>>>>
>>>>>>>> drivers/base/node.c:429:5: warning: no previous prototype for function 'register_mem_block_under_node_early' [-Wmissing-prototypes]
>>>>>>     int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
>>>>>>         ^
>>>>>>     drivers/base/node.c:429:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>>>>     int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
>>>>>>     ^
>>>>>>     static
>>>>>>     1 warning generated.
>>>>> It is fixed in the mainline. Will stable tree pick it from there ?
>>>> What is the git commit id for this?
>>> commit  f85086f95fa3 (mm: don't rely on system state to detect
>>> hot-plug operations)
>>> which marks this function as static.
>> Ah, that's not ok for stable trees.  Don't worry about this, sparse
>> issues for stuff like this is not a big deal for stable releases.
> And it's already in the 4.19 tree, so I have no idea why 0-day is
> complaining...

Hi Greg,

The function isn't marked as static in the 4.19 tree.

# commit in mainline is "f85086f95fa3 (mm: don't rely on system state to 
detect hot-plug operations)"
$ git show f85086f95fa3 | grep register_mem_block_under_node_early\(
+static int register_mem_block_under_node_early(struct memory_block 
*mem_blk,

# commit in linux-stable-rc/linux-4.19.y is "b6f69f72c15d (mm: don't 
rely on system state to detect hot-plug operations)"
$ git show b6f69f72c15d | grep register_mem_block_under_node_early\(
+int register_mem_block_under_node_early(struct memory_block *mem_blk, 
void *arg)

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7fc5e732-ee2e-a63b-c018-0fc89efe78c1%40intel.com.
