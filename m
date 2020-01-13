Return-Path: <clang-built-linux+bncBCHPXRO65YERB4PB6LYAKGQERFVNTBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF4F139850
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 19:03:30 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id x199sf7045179pfc.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 10:03:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578938609; cv=pass;
        d=google.com; s=arc-20160816;
        b=VTGpBTDT/A3/u1b884+HM6ifX1z05vtg06FzI0IC4ToDpBfYitJpWX+APKTldfyhEu
         EZwhYycBnK206O4I+K1iwzI9YLBEGJ6Cuw/5Q384tI2PTCp3NLrU/Q5npfETGkaI02IK
         Gwp89eYjEV0R2earZ4ufXx7A/uKZ7LFkslMxOEKOyI8E6s69Q74Vv7Kr9DH2JlvmyDas
         swo3vipdzaZ1PbWjf/mWYOPsoS0XZsCVpD+z0YSQjMRb4KX6yl/dpwg6Skc461V7Y8Tu
         t1QpVesbnIbNc/hB7qtoYiy1GJJiDTKM0oRym6mjr7v3khjhv0s3G6+ahJiZYPOLrbM6
         ss8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OvgRVi1HmlrK5HPaoC0GvCADvA/Klq+5Z9pG6zyeA1o=;
        b=dJ3TGzuzs8lmLED1sASnwX8qmEsYwSautSPfBd8/l0xdZsNnkxynf35+K/zRgmYY1Y
         dOnGbGS6hxLhmxbQt0dEh0Kf9CNqOb3YLP0lU0wdVUywH8oeKBeGWO1lt1g6ltINMjhF
         Rb5Q1qGKj/cM4q4iOTC0nGDz3I7OIZV1bkY1jNoV5Q2+i3EQmqS4xS6+geSzJePQfhwA
         Jrkx2yQxnjH+Jf+29U408JSJ6WXcbbMtF7yhr4BJUX2EXiDhCdI7xArz3SoHYHcOX9ye
         xmh7oGh6dmrDLaF7thmFnh/A/LvBI8bXJAKA2PI3WhTefRqG31AFrGSHu9zOZzT3pZOc
         H2xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OvgRVi1HmlrK5HPaoC0GvCADvA/Klq+5Z9pG6zyeA1o=;
        b=QIbNFXut6Gyh1K0lMzT1RpvHKt+p6kw8WjmpCtFqWiRjupjmvQ8zyw0dWXozAj4Msw
         +7RI6NmptpaDbFg7FYct+fSwCYHEQY/+REkUYeT4gez826+i/WwT6sETOKm3ZAv5sLNZ
         eBfKL9k2aL1rpos2QxUITuVa+h8SFpSKrC0Ld2P1uLxIrSfzu+kD6BcJrP4m1AVnIJM8
         B8NfUnCIikUE2KBYEoNiM7fIRV83xMS0uLj2Ij1jhoTeFsg2NsnA2gwxbC/uErLX9dl8
         FhFeTjbnguGJIgyDfretPbKZcQeN46oODJ1RiRXSZDblzjVLbrhPsIJ/RyAPpRjMA6XS
         IeSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OvgRVi1HmlrK5HPaoC0GvCADvA/Klq+5Z9pG6zyeA1o=;
        b=W7hBOVceiaLurkerCKWvAuw4/45wADE4dC3brGM1h3wzcsxFh+PmGUzng8VVxOzqX1
         foXi0wAJ8BUcMfVJNrRoHpgaPr7Um+IaFvqsn5zfKeeKmMwvsQOvCuDtVc4PqDy+Vkvn
         LAfFjhphK4bOdfbBig84Nw/cal4YzjJLq0AMStwB8WBjldY9FazZ0kC+b+0Uo2pEL5Wb
         4xa+Bxe4DUw0nMZjKwpA+pePcG+L5UiDfHfrWlJNw6kUVa5bAHgYZgTwrU/4O3nDR4xm
         A5mXg5+PB5hyV3kI0flO/iJ/KPxxpM3FPiBzfv+NneRiHNvWva4nUEr1UUvDwaYZG2+5
         rzNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnaFKNLYjkC4o7u+pxshG5qNJotiQz9Lib3RcG/L7l+jS9rjk1
	A2w9xUDaujVtMqlRFsULrpg=
X-Google-Smtp-Source: APXvYqx6kwpcm9j0eM7dlD48xYvvxgvT3lKA2rBghfd3Ex1oPKs/+ICp3/9p91y/vewMtwIAlx3GhQ==
X-Received: by 2002:a17:90a:31cc:: with SMTP id j12mr23111605pjf.103.1578938609291;
        Mon, 13 Jan 2020 10:03:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:30d:: with SMTP id 13ls3717603pgd.7.gmail; Mon, 13 Jan
 2020 10:03:28 -0800 (PST)
X-Received: by 2002:a63:1d1a:: with SMTP id d26mr20973632pgd.98.1578938608829;
        Mon, 13 Jan 2020 10:03:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578938608; cv=none;
        d=google.com; s=arc-20160816;
        b=DK61yxoHgC4/2B4uwTH9w7reoKac2KF2i+wYex4pSisFdMDGuOm8+zSJWp9ObNk0Sm
         Btq/KoCr28Sddw5bWejs5zS3A0ekYGPeN3Do00xpmaXPy0zrE9PR0G07IwsAPaCvyRyB
         xIRQ3UEq2droyVdfshz3k80smIcX/w/78cJi85AnHQ7TyylYO6IhIOoL5h5mBwIvKvID
         6tBDbz4Q9SDRJX9cKFgtUMRsNW+ImKKnIhJpWewVTOgHIC2o+OKtaPN0or6hAB637fAL
         kl/I13UbrLa+cRDuQg+YmvpWwQ/UndIc+ffc0EUO3dXV+SkJHBqO6HE/V4YUwzJd9ZY8
         POdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=PYSZAqcdwhsntxgdrykGwRDYa4Ycza1yXbT9/D7KtmA=;
        b=kBMPvyIvjDhmFPCUxCli1Pdla48uisJJ1oWSBL9OuR0pELNUyWe0ayIZ4SYxVmdjA7
         P4HJCPmkOHJxA13VKMMLw+gzyflb+Ct6FJahi1eZwnLqBkeITAj6Nwdv/kfzGNH2Dp/j
         PBvUIjKp591VfgNFyogMRlkByj9zgM4Ie9Xn55A46/rF5vVhvi0G+EQlTiousu0P1lGV
         isH4gtfXjkHVziU7bC1pgceByA86Zg6N1fxDc9kzlSbslK57OcdUtQkrlSVmdisPwV3d
         wftVNdhU2OOsqTYaHedMq4sDXDjGOhVVGeOjvfJAWfI85zNnc8y9Gwg55j/IICoFnClH
         zyHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id v13si504972pga.4.2020.01.13.10.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Jan 2020 10:03:28 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Jan 2020 10:03:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; 
   d="scan'208";a="217477995"
Received: from ckhasnis-mobl1.amr.corp.intel.com (HELO [10.252.204.11]) ([10.252.204.11])
  by orsmga008.jf.intel.com with ESMTP; 13 Jan 2020 10:03:27 -0800
Subject: Re: [plbossart-sound:integration/soundwire-sof-20200109 14/14]
 sound/soc/sof/intel/hda.c:1126:9: error: assigning to 'struct
 snd_soc_acpi_link_adr *' from 'const struct snd_soc_acpi_link_adr *' discards
 qualifiers
To: Nick Desaulniers <ndesaulniers@google.com>,
 yung-chuan.liao@linux.intel.com
Cc: kbuild@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org
References: <202001111315.uMPWi1Pb%lkp@intel.com>
 <CAKwvOdmM20rPceay60MfVkwe-sPJwcmd9Czf_12vsgAu8w8nPA@mail.gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <b85b8715-4e1a-4546-a34d-4323ff7c380e@linux.intel.com>
Date: Mon, 13 Jan 2020 12:03:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmM20rPceay60MfVkwe-sPJwcmd9Czf_12vsgAu8w8nPA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pierre-louis.bossart@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Fixed already

On 1/13/20 11:21 AM, Nick Desaulniers wrote:
> Hi Bard,
> Below is a warning from a 0day bot build with Clang. The warning looks
> legit, can you please take a look?
> 
> On Fri, Jan 10, 2020 at 9:04 PM kbuild test robot <lkp@intel.com> wrote:
>>
>> CC: kbuild-all@lists.01.org
>> TO: Bard Liao <yung-chuan.liao@linux.intel.com>
>> CC: "Pierre-Louis Bossart" <pierre-louis.bossart@linux.intel.com>
>>
>> tree:   https://github.com/plbossart/sound integration/soundwire-sof-20200109
>> head:   aa85a698ad25db1ca48acb16c0661c4b998bd7ee
>> commit: aa85a698ad25db1ca48acb16c0661c4b998bd7ee [14/14] ASoC: SOF: select machine driver with sdw adr.
>> config: arm64-allyesconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 4ebb589629b0d3de0827cab179338836ebb3a8b6)
>> reproduce:
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          git checkout aa85a698ad25db1ca48acb16c0661c4b998bd7ee
>>          # save the attached .config to linux build tree
>>          make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> sound/soc/sof/intel/hda.c:1126:9: error: assigning to 'struct snd_soc_acpi_link_adr *' from 'const struct snd_soc_acpi_link_adr *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
>>                             link = mach->links;
>>                                  ^ ~~~~~~~~~~~
>>     1 error generated.
>>
>> vim +1126 sound/soc/sof/intel/hda.c
>>
>>    1097
>>    1098  static int hda_sdw_machine_select(struct snd_sof_dev *sdev)
>>    1099  {
>>    1100          struct hdac_bus *bus = sof_to_bus(sdev);
>>    1101          struct snd_soc_acpi_mach *mach;
>>    1102          struct snd_sof_pdata *pdata = sdev->pdata;
>>    1103          struct sof_intel_hda_dev *hdev = pdata->hw_pdata;
>>    1104          u32 link_mask;
>>    1105          struct snd_soc_acpi_link_adr *link;
>>    1106          int i;
>>    1107
>>    1108          link_mask = hdev->info.link_mask;
>>    1109
>>    1110          /*
>>    1111           * Select SoundWire machine driver if needed using the
>>    1112           * alternate tables. This case deals with SoundWire-only
>>    1113           * machines, for mixed cases with I2C/I2S the detection relies
>>    1114           * on the HID list.
>>    1115           */
>>    1116          if (link_mask && !pdata->machine) {
>>    1117                  for (mach = pdata->desc->alt_machines;
>>    1118                       mach && mach->link_mask; mach++) {
>>    1119                          if (mach->link_mask != link_mask)
>>    1120                                  continue;
>>    1121
>>    1122                          /* No need to match adr if there is no links defined */
>>    1123                          if (!mach->links)
>>    1124                                  break;
>>    1125
>>> 1126                          link = mach->links;
>>    1127                          for (i = 0; i < hdev->info.count; i++, link++) {
>>    1128                                  /*
>>    1129                                   * Try next machine if any expected Slaves
>>    1130                                   * are not found on this link.
>>    1131                                   */
>>    1132                                  if (!link_slaves_found(sdev, link, hdev->sdw))
>>    1133                                          break;
>>    1134                          }
>>    1135                          /* Found if all Slaves are checked */
>>    1136                          if (i == hdev->info.count)
>>    1137                                  break;
>>    1138                  }
>>    1139                  if (mach && mach->link_mask) {
>>    1140                          dev_dbg(bus->dev,
>>    1141                                  "SoundWire machine driver %s topology %s\n",
>>    1142                                  mach->drv_name,
>>    1143                                  mach->sof_tplg_filename);
>>    1144                          pdata->machine = mach;
>>    1145                          mach->mach_params.platform = dev_name(sdev->dev);
>>    1146                          pdata->fw_filename = mach->sof_fw_filename;
>>    1147                          pdata->tplg_filename = mach->sof_tplg_filename;
>>    1148                  } else {
>>    1149                          dev_info(sdev->dev,
>>    1150                                   "No SoundWire machine driver found\n");
>>    1151                  }
>>    1152          }
>>    1153
>>    1154          return 0;
>>    1155  }
>>    1156  #else
>>    1157  static int hda_sdw_machine_select(struct snd_sof_dev *sdev)
>>    1158  {
>>    1159          return 0;
>>    1160  }
>>    1161  #endif
>>    1162
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology Center
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b85b8715-4e1a-4546-a34d-4323ff7c380e%40linux.intel.com.
