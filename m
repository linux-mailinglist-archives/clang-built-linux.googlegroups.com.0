Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP7W6XVAKGQEMTBDK5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2CA98104
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:11:28 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id g185sf2030801pfb.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 10:11:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566407487; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jks+KDJ1YlCxQQyCne0FZfhcVA7dzgH8cjK5DHhEgqgUtLH0hZXEPEgveMnTW0WFn8
         e5Q+18dEVv62dmk0+6SAM1lLmDcX7GxEmtUW4hhNIykqsVgEl8e+TGFT5LV6NmHFKRYk
         cI2jsID5bAnOeDIfuXjr2gLFZ3WYzJz78UW5GgKJCOpJD+ZcFWXTo284+j2kyVdAEAGi
         yiJ51LuWqmelq4EAhaychrmzmIkHe27okAgzhQm8U9pb3WQMrjDZzq2HlZKR587AAgJ0
         9wszERsLumB4VTq5gKJhEVVGtBPDf3Ruhh814TJtKu0rVoHZokHBmvW/px0T8O+jwLvz
         31rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jrixpcjd5FB/ahAFqlqKHFBbuerK4QY24ZEL+Ko+vHw=;
        b=WINskC4OJYtp+i5YmqGQ8DJ9+xRW5+zfHJ7Ut8M9klmmfJBabPPxCJex0inJFnOQ3m
         dVA01wcS0RUaDPCnwnIxgSl4bRUAFFSo5aOdwfLByjTC6hZ6vRKCRjZGFerPgSUOV+H0
         zeFWnpC2gOB3uLE739UyZrzljtRQAdtj5RTpSo5OLei2GYIim99Wzp91CJPPLpycz/nX
         gqoLw1XxZc9nx3LNUwOLbp1+H7IBWb5GAAAbQpNcGa4hP0fNfTdjA6b3/K+sbaQUeV08
         b4CiPCdBkz0OkpFdwxATGopAQg0nEX7Odbeu2g33ZY/Qmg3tO27CPElPcffgFaOzIxvR
         +hTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JYeqz5bt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jrixpcjd5FB/ahAFqlqKHFBbuerK4QY24ZEL+Ko+vHw=;
        b=M7UQi8KG55gyv1H5DkyGRXresrdDXlkJr55WJh6p4ICrqlRYKhLEEzHDjPzDkDzCjm
         hq+8AMOPfQnZQMolTNISzMvdnjG5ejxMFTnU6C0s+USpD1/yyangYIvMFsdjTyb2AUwH
         rz9iYek6fLtLIkxKighPWifxvvJtN0xznrzmml9HIJqEjOHUVs1uX54OQN2Y1+35/PmU
         CZGN8Wr8Op+JHmkuhoi+XZFguQepvAP5APag2m9CRD/Qi2siKyiUgOmER79n0JHSRCBN
         mXCUAJey51xclmsNw3C1ZtcAGSrgwQN2VNshlPweZJlQyD7hmu8FiPDIHTv8GIKILyli
         Dtww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jrixpcjd5FB/ahAFqlqKHFBbuerK4QY24ZEL+Ko+vHw=;
        b=hY1QZct3kUr/7Zt6c6SD45s3gWovGAhmj16qs/hA6DYdisC0F5810AKoVLvKHWya1y
         lh/J1jx9Dpocn9Rq3a/WOf427kcG+vFXgUayka9xLMvrXI9da6E96vLUNORYWbPlDkmM
         E/GWeCVT4RwaN51wkBrMgzn07eC34Y6yviYHVWJYZuKSuw/TxqoHoDPte9C7nLVkuNyz
         9/fpkF3jXPclcXKNe/O9ukscUj5GhzXaFgwCSHZ6givCJ8UCLihne+G3Jp7fWgiqsXP/
         7WtJBY3jBMhIarmIt6/9vNUOAPqw5CDzrKotTIVMMvetv8+xYdbqpuyprUNiiDwfEM4m
         ZtiQ==
X-Gm-Message-State: APjAAAX7FadHf3CJSjeNSWLZ6v6FZgoFPPCXy/zAj0GpHKnzgL2n9ebv
	J5I0tDkJMnvJL9Qq4Qzr9Vw=
X-Google-Smtp-Source: APXvYqyhdiraUpU9FKoya7NofSHGlQWbkZZ67NXg0otnW3c3Fsajc0pOh1iiQkLcy/p+oxdwGLCtjg==
X-Received: by 2002:a17:902:169:: with SMTP id 96mr33414679plb.297.1566407487164;
        Wed, 21 Aug 2019 10:11:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls627367pgw.15.gmail; Wed, 21 Aug
 2019 10:11:26 -0700 (PDT)
X-Received: by 2002:a62:3681:: with SMTP id d123mr8095477pfa.147.1566407486809;
        Wed, 21 Aug 2019 10:11:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566407486; cv=none;
        d=google.com; s=arc-20160816;
        b=G33j3Ug5MV3coFc6y1bsDD4iRJHgLbH4bmNKWMFaHhEQ3JkLoERDdIXsQTc2nWxOF+
         yW7U4BQir85o2uNVosxlkcEXBg+lihWHr+sePvximSQ4upTBy8uRearxeQX6G5aBOaIB
         mmhJ2aDbA0TKpAt++mFr/pcdoFPy1eQyadj1fualGTedpd0sgdBX1imV9l8Cxw+7mmzH
         +JlEQF5d2B3/I0wioh742B4YcFiQcppJ0SfEQya6j84wgyD0n9W7SqLKaujVW6+hAjA2
         vyIyQEwGUczPPCbZKvuW1yWGhQSFaO56pYQQxdNYLIRb/T1VHCPvtxPj2Sz78MD/Uv0U
         BPpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wbWDxTlvcXaY4+lhIjBTJxzO/U3kk7ICnuf/3y6bHcg=;
        b=TEoTEv8eKAnqD+x4SheYsJL/qRmMzKnjE6Tr3wjB0o5RmZPPwOtGh4pXcjJaPpOzws
         0MJsL6bn+SbLaGh2LLkPKPjEDIAQAGJzXOsOzSb0n2QWKJfEh1kxEcK0rXFTNI9u/lgy
         JX6bjciEjNfxXLULasIAHAARPOwvSuTUzFyrUqP3AWP8NA/Z7ORvsjaaSdztvZLfq7t/
         N686KnYLz0EKN8tyMFdA1oB8qXuD0HaHD31c7lLM6EG4j/UyqsuOj8MK0NiaoJrbFtDp
         04VKENULQLtLhnmg5vhuxz8FPjMT4KEC9OrP3Jko+vrzgRYVEGE8DnKDSWa3p4OS2oiS
         pF2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JYeqz5bt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u199si1075710pgb.1.2019.08.21.10.11.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 10:11:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id v12so1831936pfn.10
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 10:11:26 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr29656006pgg.381.1566407485819;
 Wed, 21 Aug 2019 10:11:25 -0700 (PDT)
MIME-Version: 1.0
References: <201908220120.xVqhquIf%lkp@intel.com>
In-Reply-To: <201908220120.xVqhquIf%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Aug 2019 10:11:14 -0700
Message-ID: <CAKwvOdkEY84oGowZzdvK63SJ=kU6FKymBs50hJL27y2USid_Yg@mail.gmail.com>
Subject: Re: [iwlwifi-fixes:pending 1/1] drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1054:19:
 error: invalid operands to binary expression ('const struct iwl_cfg *' and
 'const struct iwl_cfg')
To: Luca Coelho <luciano.coelho@intel.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JYeqz5bt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

+ Luca
This looks like it should have been comparison, not assignment.

On Wed, Aug 21, 2019 at 10:02 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Luca Coelho <luciano.coelho@intel.com>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/iwlwifi/iwlwifi-fixes.git pending
> head:   edba6b892cde60d86e8cc249994c774f86bef338
> commit: edba6b892cde60d86e8cc249994c774f86bef338 [1/1] iwlwifi: pcie: handle switching killer Qu B0 NICs to C0
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout edba6b892cde60d86e8cc249994c774f86bef338
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All error/warnings (new ones prefixed by >>):
>
> >> drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1053:21: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    if (iwl_trans->cfg= &iwl_ax101_cfg_qu_hr)
>                        ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1053:21: note: place parentheses around the assignment to silence this warning
>                    if (iwl_trans->cfg= &iwl_ax101_cfg_qu_hr)
>                                      ^
>                        (                                   )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1053:21: note: use '==' to turn this assignment into an equality comparison
>                    if (iwl_trans->cfg= &iwl_ax101_cfg_qu_hr)
>                                      ^
>                                      ==
> >> drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1054:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &iwl_ax101_cfg_qu_c0_hr_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1055:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &iwl_ax201_cfg_qu_hr)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1055:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &iwl_ax201_cfg_qu_hr)
>                                           ^
>                             (                                   )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1055:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &iwl_ax201_cfg_qu_hr)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1056:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &iwl_ax201_cfg_qu_c0_hr_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1057:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &iwl9461_2ac_cfg_qu_b0_jf_b0)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1057:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &iwl9461_2ac_cfg_qu_b0_jf_b0)
>                                           ^
>                             (                                           )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1057:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &iwl9461_2ac_cfg_qu_b0_jf_b0)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1058:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &iwl9461_2ac_cfg_qu_c0_jf_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1059:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &iwl9462_2ac_cfg_qu_b0_jf_b0)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1059:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &iwl9462_2ac_cfg_qu_b0_jf_b0)
>                                           ^
>                             (                                           )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1059:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &iwl9462_2ac_cfg_qu_b0_jf_b0)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1060:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &iwl9462_2ac_cfg_qu_c0_jf_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1061:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &iwl9560_2ac_cfg_qu_b0_jf_b0)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1061:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &iwl9560_2ac_cfg_qu_b0_jf_b0)
>                                           ^
>                             (                                           )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1061:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &iwl9560_2ac_cfg_qu_b0_jf_b0)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1062:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &iwl9560_2ac_cfg_qu_c0_jf_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1063:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &iwl9560_2ac_160_cfg_qu_b0_jf_b0)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1063:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &iwl9560_2ac_160_cfg_qu_b0_jf_b0)
>                                           ^
>                             (                                               )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1063:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &iwl9560_2ac_160_cfg_qu_b0_jf_b0)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1064:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &iwl9560_2ac_160_cfg_qu_c0_jf_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1065:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &killer1650s_2ax_cfg_qu_b0_hr_b0)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1065:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &killer1650s_2ax_cfg_qu_b0_hr_b0)
>                                           ^
>                             (                                               )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1065:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &killer1650s_2ax_cfg_qu_b0_hr_b0)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1066:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &killer1650s_2ax_cfg_qu_c0_hr_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1067:26: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>                    else if (iwl_trans->cfg= &killer1650i_2ax_cfg_qu_b0_hr_b0)
>                             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1067:26: note: place parentheses around the assignment to silence this warning
>                    else if (iwl_trans->cfg= &killer1650i_2ax_cfg_qu_b0_hr_b0)
>                                           ^
>                             (                                               )
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1067:26: note: use '==' to turn this assignment into an equality comparison
>                    else if (iwl_trans->cfg= &killer1650i_2ax_cfg_qu_b0_hr_b0)
>                                           ^
>                                           ==
>    drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1068:19: error: invalid operands to binary expression ('const struct iwl_cfg *' and 'const struct iwl_cfg')
>                            iwl_trans->cfg &killer1650i_2ax_cfg_qu_c0_hr_b0;
>                            ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> vim +1054 drivers/net/wireless/intel/iwlwifi/pcie/drv.c
>
>    991
>    992  static int iwl_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>    993  {
>    994          const struct iwl_cfg *cfg = (struct iwl_cfg *)(ent->driver_data);
>    995          const struct iwl_cfg *cfg_7265d __maybe_unused = NULL;
>    996          struct iwl_trans *iwl_trans;
>    997          int ret;
>    998
>    999          if (WARN_ONCE(!cfg->csr, "CSR addresses aren't configured\n"))
>   1000                  return -EINVAL;
>   1001
>   1002          iwl_trans = iwl_trans_pcie_alloc(pdev, ent, cfg);
>   1003          if (IS_ERR(iwl_trans))
>   1004                  return PTR_ERR(iwl_trans);
>   1005
>   1006  #if IS_ENABLED(CONFIG_IWLMVM)
>   1007          /*
>   1008           * special-case 7265D, it has the same PCI IDs.
>   1009           *
>   1010           * Note that because we already pass the cfg to the transport above,
>   1011           * all the parameters that the transport uses must, until that is
>   1012           * changed, be identical to the ones in the 7265D configuration.
>   1013           */
>   1014          if (cfg == &iwl7265_2ac_cfg)
>   1015                  cfg_7265d = &iwl7265d_2ac_cfg;
>   1016          else if (cfg == &iwl7265_2n_cfg)
>   1017                  cfg_7265d = &iwl7265d_2n_cfg;
>   1018          else if (cfg == &iwl7265_n_cfg)
>   1019                  cfg_7265d = &iwl7265d_n_cfg;
>   1020          if (cfg_7265d &&
>   1021              (iwl_trans->hw_rev & CSR_HW_REV_TYPE_MSK) == CSR_HW_REV_TYPE_7265D) {
>   1022                  cfg = cfg_7265d;
>   1023                  iwl_trans->cfg = cfg_7265d;
>   1024          }
>   1025
>   1026          if (iwl_trans->cfg->rf_id && cfg == &iwl22000_2ac_cfg_hr_cdb &&
>   1027              iwl_trans->hw_rev != CSR_HW_REV_TYPE_HR_CDB) {
>   1028                  u32 rf_id_chp = CSR_HW_RF_ID_TYPE_CHIP_ID(iwl_trans->hw_rf_id);
>   1029                  u32 jf_chp_id = CSR_HW_RF_ID_TYPE_CHIP_ID(CSR_HW_RF_ID_TYPE_JF);
>   1030                  u32 hr_chp_id = CSR_HW_RF_ID_TYPE_CHIP_ID(CSR_HW_RF_ID_TYPE_HR);
>   1031
>   1032                  if (rf_id_chp == jf_chp_id) {
>   1033                          if (iwl_trans->hw_rev == CSR_HW_REV_TYPE_QNJ)
>   1034                                  cfg = &iwl9560_2ac_cfg_qnj_jf_b0;
>   1035                          else
>   1036                                  cfg = &iwl22000_2ac_cfg_jf;
>   1037                  } else if (rf_id_chp == hr_chp_id) {
>   1038                          if (iwl_trans->hw_rev == CSR_HW_REV_TYPE_QNJ)
>   1039                                  cfg = &iwl22000_2ax_cfg_qnj_hr_a0;
>   1040                          else
>   1041                                  cfg = &iwl22000_2ac_cfg_hr;
>   1042                  }
>   1043                  iwl_trans->cfg = cfg;
>   1044          }
>   1045
>   1046          /*
>   1047           * This is a hack to switch from Qu B0 to Qu C0.  We need to
>   1048           * do this for all cfgs that use Qu B0.  All this code is in
>   1049           * urgent need for a refactor, but for now this is the easiest
>   1050           * thing to do to support Qu C-step.
>   1051           */
>   1052          if (iwl_trans->hw_rev == CSR_HW_REV_TYPE_QU_C0) {
> > 1053                  if (iwl_trans->cfg= &iwl_ax101_cfg_qu_hr)
> > 1054                          iwl_trans->cfg &iwl_ax101_cfg_qu_c0_hr_b0;
>   1055                  else if (iwl_trans->cfg= &iwl_ax201_cfg_qu_hr)
>   1056                          iwl_trans->cfg &iwl_ax201_cfg_qu_c0_hr_b0;
>   1057                  else if (iwl_trans->cfg= &iwl9461_2ac_cfg_qu_b0_jf_b0)
>   1058                          iwl_trans->cfg &iwl9461_2ac_cfg_qu_c0_jf_b0;
>   1059                  else if (iwl_trans->cfg= &iwl9462_2ac_cfg_qu_b0_jf_b0)
>   1060                          iwl_trans->cfg &iwl9462_2ac_cfg_qu_c0_jf_b0;
>   1061                  else if (iwl_trans->cfg= &iwl9560_2ac_cfg_qu_b0_jf_b0)
>   1062                          iwl_trans->cfg &iwl9560_2ac_cfg_qu_c0_jf_b0;
>   1063                  else if (iwl_trans->cfg= &iwl9560_2ac_160_cfg_qu_b0_jf_b0)
>   1064                          iwl_trans->cfg &iwl9560_2ac_160_cfg_qu_c0_jf_b0;
>   1065                  else if (iwl_trans->cfg= &killer1650s_2ax_cfg_qu_b0_hr_b0)
>   1066                          iwl_trans->cfg &killer1650s_2ax_cfg_qu_c0_hr_b0;
>   1067                  else if (iwl_trans->cfg= &killer1650i_2ax_cfg_qu_b0_hr_b0)
>   1068                          iwl_trans->cfg &killer1650i_2ax_cfg_qu_c0_hr_b0;
>   1069          }
>   1070
>   1071          /* same thing for QuZ... */
>   1072          if (iwl_trans->hw_rev == CSR_HW_REV_TYPE_QUZ) {
>   1073                  if (cfg == &iwl_ax101_cfg_qu_hr)
>   1074                          cfg = &iwl_ax101_cfg_quz_hr;
>   1075                  else if (cfg == &iwl_ax201_cfg_qu_hr)
>   1076                          cfg = &iwl_ax201_cfg_quz_hr;
>   1077                  else if (cfg == &iwl9461_2ac_cfg_qu_b0_jf_b0)
>   1078                          cfg = &iwl9461_2ac_cfg_quz_a0_jf_b0_soc;
>   1079                  else if (cfg == &iwl9462_2ac_cfg_qu_b0_jf_b0)
>   1080                          cfg = &iwl9462_2ac_cfg_quz_a0_jf_b0_soc;
>   1081                  else if (cfg == &iwl9560_2ac_cfg_qu_b0_jf_b0)
>   1082                          cfg = &iwl9560_2ac_cfg_quz_a0_jf_b0_soc;
>   1083                  else if (cfg == &iwl9560_2ac_160_cfg_qu_b0_jf_b0)
>   1084                          cfg = &iwl9560_2ac_160_cfg_quz_a0_jf_b0_soc;
>   1085          }
>   1086
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkEY84oGowZzdvK63SJ%3DkU6FKymBs50hJL27y2USid_Yg%40mail.gmail.com.
