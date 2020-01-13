Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGOO6LYAKGQEYJZYFZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A0713976B
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 18:21:31 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id x9sf1430471uaq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 09:21:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578936090; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxG2RzStmcPgQQDvD8q7pS+WnuKWO3Mqxw9iESWLThkDjsodm5V3D+8gdabWDCmVNy
         MqKofvlnFcrD6CJ1cUpFaZDGxdNBSmIgD8hNr1pInrJnaVhsNFIAun5iu5MyT057zACv
         EexoAB3I540ziC6V6K/yeWWmpo7omgQtGNboJR95lKJu6VpMyi+JMMUFMw2aZ6/VmLR1
         9ITn9kqrh9EPPjqqvlz4kTvpTIz82SPMkyYSBYLKO0InDr4nKrS1g77jtlzc1Ss/cUUE
         qJzmzJJ3ARdKda3784G/kTmpJhvHaH4Cv9cZINsSKNcZ9eY5UKuU/+A6HstnhDIDx/P2
         Lcsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wBqgMFJAJll5FzvOY/aSCEoMrTiISlYidw+FlzgafxU=;
        b=mRhkD3nvVR6xh0AwbVLv664tdTYSpzQMpiLyjpCnuzu9lYhbsplDVGYkEsOv29eNv0
         V/nKGbNjlClO/wHpcHDAA5Y6ichugwLvYhnzQpHt0tCw+132dmRC74iutd2m7qEt7Dsj
         zRdn8Jhoh7KmT31sMXn/z9fhvoIVABYM0HRe/O9fdljJh2ho9MuWpsRtzAFOY0VdURML
         SXw97w0o1BgU4zbeerdAW2KOeCRsD6W4xjqcGL1I+ySh3FTVPnsQ5CccEXjXOeu2f+p1
         mW0Wzik9Xd2JBUz65gG5q2HhShbMABHerKIAK/mT2JWIoUCjcxUQEuqlkWzLPtwxaBv0
         I3JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g5KwxWPt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBqgMFJAJll5FzvOY/aSCEoMrTiISlYidw+FlzgafxU=;
        b=Lk2hDi5YBomWP6Qvd8z7IkcOgzSgGWlzabx7Hv16Z6Fykuelj5RX1P0UCH31Yz15uV
         8AW5LrBLBas1bST3zKeP7Rq8zGBHt6YLTanNvyODqZh3Vo6MIQaNQBjjNey4b2SO9dlc
         jKgEEXSwq/mhE/Z4CwsNepExvH90YnyIKBJW257z05R0sbNYf1jzuKCZVZ9fJQ5+jOxo
         V54TKjbf1CoiKzF71Ktwy161QfhkfPD5uJ8zsZWq/XPo+TbwyK3DCfUPeMb+ENi9mbR0
         DnJJaHYmttIuLNpXMwQFBxUgun72r1x5nUnP0j3p403tpt4noxCnAMV82eI0cqZ3AZnp
         WyCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBqgMFJAJll5FzvOY/aSCEoMrTiISlYidw+FlzgafxU=;
        b=IvX2/TM+L5LmTAhr8GKznX12nxPtVxsporFMIU63evfpYEIZICHdKd2vU/EmbXG0QL
         mMWJqbDirwaA0EDFattGPx3vGE4sTdlEvUFkQzukj1I/QmKlV2aYZAWEwqSXHAfUWk56
         Bau8gm38XfAfyoDGIgdUgLK0DNjPfiXP3A61peipyVjP0BzY0x1Yruken0ncjTbZzZrv
         o+Ogw60zIvcJkf3nqmn/zljwjwBYzUT7lufFJuZ4T8z5VsSpLqRkayJG+cwKC+BIHExX
         fOB/U0tLKQ3n0Mu6qbNacNjCBkH93mNCEA4K2xZFmCbSok+qh0dux0ftERayPgpLaoED
         re4g==
X-Gm-Message-State: APjAAAUIeuKBD4lkl3pBPhiM4mQDCHM3P9X+X4PPlaIT3sNP7jOXAj/u
	kjQfhQX2Bl5P3vvL3JL/ubA=
X-Google-Smtp-Source: APXvYqz/M64pW6aIlMWe+vj1+ya0JU+yIJIEjb3hIZdr0WAl9u1Z7rc2xvfwAE1OiauX39S70rkRPA==
X-Received: by 2002:a67:7d17:: with SMTP id y23mr9396135vsc.162.1578936089757;
        Mon, 13 Jan 2020 09:21:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:cf81:: with SMTP id f123ls505403vkg.13.gmail; Mon, 13
 Jan 2020 09:21:29 -0800 (PST)
X-Received: by 2002:a1f:1b07:: with SMTP id b7mr8173101vkb.79.1578936089293;
        Mon, 13 Jan 2020 09:21:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578936089; cv=none;
        d=google.com; s=arc-20160816;
        b=HKG1Ja7sr1Xi+v4RV0YcIMk8071WJJANFmT3EBI9iQpOwJBsjIeAHcDqjIcnS5zZM3
         J3klm5+Zy4WEaNvUzIB2rDjAeU04SPkxg2Pb0XaQlT6XmdpWM2V+kkAYs8trDb7wWs8b
         5SUnq2w1JNkhfDU//ObeFLuTRiTnl6NC19BQbj2GP7kjXvJBCK+0RR/ble1oVN6m8xdZ
         14E73VzYeOgy587SyrDDOqCJMt9Nc2bVMKD143dASHMDc4QqqPCRdj/X4itNGnEFYVwc
         WF/EH2bPeqi+/o4r/x92h+321fUaTF8agQZOlIsZ7P8KIgsFrTRgP1QlQa9geI0ZQ6zS
         VbYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ctqvbIlnoTg81Qkdc0EXMORSIe7596qjsoFXzfSoUOA=;
        b=0PU1lSvHBvMBOxt/bsBtQ7tXCrPEu4S3qv9L0lRqSX/Ea/ghPCS6XfAf7oxjaESlel
         XzWcbdsEKSxqlnZixL3dSUNyUJw47Sp9y1ce/HsCK3gQOzjt9ectslWyWI6ST5WwQ26e
         9/mrcjRFq82FTAwfkUBoRGSYCex5feahEoGrQK34VGunrVjSMdfP0+7kmvITyZ1gke6e
         atfQR2g7RHEf31CeaudEtFbib6D6bgTt9xi6sZo/BVhTwfmsaE31C78f8YuqJ9fI7AK7
         JzcafH/pFaf/FFCHGz5Wfe5PMrsLwQjWW8V111lMSE+DL1sql2n5u295TdkdPgmLUvAP
         EwXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g5KwxWPt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id h7si423637vsm.1.2020.01.13.09.21.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 09:21:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id s7so4562269pjc.0
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 09:21:29 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr14851823plt.223.1578936088301;
 Mon, 13 Jan 2020 09:21:28 -0800 (PST)
MIME-Version: 1.0
References: <202001111315.uMPWi1Pb%lkp@intel.com>
In-Reply-To: <202001111315.uMPWi1Pb%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jan 2020 09:21:17 -0800
Message-ID: <CAKwvOdmM20rPceay60MfVkwe-sPJwcmd9Czf_12vsgAu8w8nPA@mail.gmail.com>
Subject: Re: [plbossart-sound:integration/soundwire-sof-20200109 14/14]
 sound/soc/sof/intel/hda.c:1126:9: error: assigning to 'struct
 snd_soc_acpi_link_adr *' from 'const struct snd_soc_acpi_link_adr *' discards qualifiers
To: yung-chuan.liao@linux.intel.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g5KwxWPt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Bard,
Below is a warning from a 0day bot build with Clang. The warning looks
legit, can you please take a look?

On Fri, Jan 10, 2020 at 9:04 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Bard Liao <yung-chuan.liao@linux.intel.com>
> CC: "Pierre-Louis Bossart" <pierre-louis.bossart@linux.intel.com>
>
> tree:   https://github.com/plbossart/sound integration/soundwire-sof-20200109
> head:   aa85a698ad25db1ca48acb16c0661c4b998bd7ee
> commit: aa85a698ad25db1ca48acb16c0661c4b998bd7ee [14/14] ASoC: SOF: select machine driver with sdw adr.
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 4ebb589629b0d3de0827cab179338836ebb3a8b6)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout aa85a698ad25db1ca48acb16c0661c4b998bd7ee
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> sound/soc/sof/intel/hda.c:1126:9: error: assigning to 'struct snd_soc_acpi_link_adr *' from 'const struct snd_soc_acpi_link_adr *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
>                            link = mach->links;
>                                 ^ ~~~~~~~~~~~
>    1 error generated.
>
> vim +1126 sound/soc/sof/intel/hda.c
>
>   1097
>   1098  static int hda_sdw_machine_select(struct snd_sof_dev *sdev)
>   1099  {
>   1100          struct hdac_bus *bus = sof_to_bus(sdev);
>   1101          struct snd_soc_acpi_mach *mach;
>   1102          struct snd_sof_pdata *pdata = sdev->pdata;
>   1103          struct sof_intel_hda_dev *hdev = pdata->hw_pdata;
>   1104          u32 link_mask;
>   1105          struct snd_soc_acpi_link_adr *link;
>   1106          int i;
>   1107
>   1108          link_mask = hdev->info.link_mask;
>   1109
>   1110          /*
>   1111           * Select SoundWire machine driver if needed using the
>   1112           * alternate tables. This case deals with SoundWire-only
>   1113           * machines, for mixed cases with I2C/I2S the detection relies
>   1114           * on the HID list.
>   1115           */
>   1116          if (link_mask && !pdata->machine) {
>   1117                  for (mach = pdata->desc->alt_machines;
>   1118                       mach && mach->link_mask; mach++) {
>   1119                          if (mach->link_mask != link_mask)
>   1120                                  continue;
>   1121
>   1122                          /* No need to match adr if there is no links defined */
>   1123                          if (!mach->links)
>   1124                                  break;
>   1125
> > 1126                          link = mach->links;
>   1127                          for (i = 0; i < hdev->info.count; i++, link++) {
>   1128                                  /*
>   1129                                   * Try next machine if any expected Slaves
>   1130                                   * are not found on this link.
>   1131                                   */
>   1132                                  if (!link_slaves_found(sdev, link, hdev->sdw))
>   1133                                          break;
>   1134                          }
>   1135                          /* Found if all Slaves are checked */
>   1136                          if (i == hdev->info.count)
>   1137                                  break;
>   1138                  }
>   1139                  if (mach && mach->link_mask) {
>   1140                          dev_dbg(bus->dev,
>   1141                                  "SoundWire machine driver %s topology %s\n",
>   1142                                  mach->drv_name,
>   1143                                  mach->sof_tplg_filename);
>   1144                          pdata->machine = mach;
>   1145                          mach->mach_params.platform = dev_name(sdev->dev);
>   1146                          pdata->fw_filename = mach->sof_fw_filename;
>   1147                          pdata->tplg_filename = mach->sof_tplg_filename;
>   1148                  } else {
>   1149                          dev_info(sdev->dev,
>   1150                                   "No SoundWire machine driver found\n");
>   1151                  }
>   1152          }
>   1153
>   1154          return 0;
>   1155  }
>   1156  #else
>   1157  static int hda_sdw_machine_select(struct snd_sof_dev *sdev)
>   1158  {
>   1159          return 0;
>   1160  }
>   1161  #endif
>   1162
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmM20rPceay60MfVkwe-sPJwcmd9Czf_12vsgAu8w8nPA%40mail.gmail.com.
