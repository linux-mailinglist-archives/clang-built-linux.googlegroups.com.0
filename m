Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBF6MYSCAMGQEWCYXH2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B16637292E
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 12:46:48 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id h13-20020a05640250cdb02903790a9c55acsf6182932edb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 03:46:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620125208; cv=pass;
        d=google.com; s=arc-20160816;
        b=veJisn9COXyuOKjitWPI4eTxshr2Kn1RXQ6qujw4LMjPhtrnOf/99TKW/l3lKhmuZi
         zpousiSiQJQ7pmaNwGNrPLX7KOAFnXlZ5Epzut6+WcdgFv8fZfdx7wry0rJ9/tU0Q+v6
         H2zyuC6eFbkSH+AmS+AsqPc0ZYybYbu8OYZScLA6JqlLANYG28meVHxqf0YpgWFP5/+i
         tx8WKtac6njlw3LjeuDepQbUr4+H/Eg6iQN2GFHm02BE/wGiHInCjSCR2GkIXtlrw2V0
         bJEROuZsqPRBqDCFNm3ae1EWp/G6J+PRXlRUg5w+YNrM7RINBZRWCpOa2XudfembHsxk
         4aBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=V/H9nNBdK/kj+tRRLWmBPSOs5HKhk9bcI86f+0txiWs=;
        b=MX2oRQ8QLqFVOfgR2y6wjlpwlLgd8fsaH8QHsmPEYWW/RqE+gX0RkBo6wwDcCg8Ign
         pWBfVvO96FxDpJl0ocmmKJL9WSDRGaETrnX3rk/UYnL3YXdkBxJE1tXi5+3VbV2yX5DG
         p+b3pKYGUGqGvWZEvDew11wEEHYhx+bde2opzftakASmkKq4F8jXj27iUOs7xGSXEKqZ
         CIsEyY1jMp8jD/1s6zUjG7P9fNv0N4DREDXKxrFKeE+ZHT/U2U3rFNNXyjvaRshTfl2Z
         EU9al1jnFtXoMstSEW1Uf+0RUzKMlzJ254AzUVfEncu6LEvcHmbMemQ+ECsxrKnAt1jQ
         qswA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/H9nNBdK/kj+tRRLWmBPSOs5HKhk9bcI86f+0txiWs=;
        b=lh+8jBe38IxEqe7r9pxeSryuREi92qEzMEGjk5DEib5bZSr7HyNDhtmsNbIPOuysAG
         wzdjblAFP3ItaqMxrA+Mp978P1Ou0qgehUd/Vf7Sy0YzlNvM0v5GXLQIpCgCWQe5lwGz
         gXG8jlGc/lenl/A+SNfruip/gZWSXjXAIHeaX+m3g07iwcLhWLAHH3SJo0CFhdTGZyxQ
         Hc0NFpHI5EvlF1qtxRQOwY4Ff+K8zH6hhhBo+/2xQzmFOIcxnW79S7dnIqOCZcdaQBjL
         lG4m2GtoMjCouTsFi88V5OE2s0Y59mprn+QkkYt0rK52LOUUMVKi3keDeQj0npZc5PeT
         mBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/H9nNBdK/kj+tRRLWmBPSOs5HKhk9bcI86f+0txiWs=;
        b=Vjjphh0B6LHF29PU5UOURaIvQ8ahYr9kr/gdKSQbqurBpcN2KVkzegCwqfAKCB//vF
         nYms6pgRtstkUgdYXyzFO2HPeS3/N57TNPAukSM2O3qe9mFHrWBNdpKv77Ys5E1r61hT
         Xsu8WJ1ldskt3IMumgl2T0l98aXvukVeJBc4zmhdcnDkntkipIbAmXPQqEP07kwDt+/g
         z2EVMtoz4A2R2bDV7OfDBkm6QS/jeVrlSh+Ng/XolMaMp7ThKZNO/sqBq63WhB3/JWt2
         QBC3RavdltC5yrgMy7IbUy3d4rxoVOVGgY5k17gfkQ7S6woLGgXtyupdvZeE65aXwoYz
         WjGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TdI9ENL+aeHbOobumwClo5shsLf+CQnTsHftmqEQjwOdly2TA
	DJmoc/sNTmsLFzRavA0p9Rg=
X-Google-Smtp-Source: ABdhPJwPc8g5y1CVTPQ9CGcsDZqxwJcjnVYErcr3Ig2w5zADmOp/tXt6C8tL9iyTMzCgDtDpJ8LEvQ==
X-Received: by 2002:a05:6402:104c:: with SMTP id e12mr24606297edu.108.1620125207923;
        Tue, 04 May 2021 03:46:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:edc9:: with SMTP id sb9ls5397868ejb.6.gmail; Tue, 04
 May 2021 03:46:47 -0700 (PDT)
X-Received: by 2002:a17:906:87cc:: with SMTP id zb12mr21870719ejb.138.1620125207016;
        Tue, 04 May 2021 03:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620125207; cv=none;
        d=google.com; s=arc-20160816;
        b=Ax7uan3u+OgfI3UH4fRVvbG/9ti6/ICJ8rj4jK17bm4ctquddSu+YE5yRA8KHUG/JD
         7MWg2HpGXxnDNXeB1DmB2wF0A15S4H1VvQ0A+4/xrGyNNmKHSTUIrppqy69twveEK+1m
         2cQ/HSa/FetbhMju2oNixPpu7STRvpNJ5UAqNubUenRz6NgULmBcJxszvmeqcrJ8MM2D
         3fWyD/HX/7enkSgxbhGNHOOGqpHbFkekmeGne5fLRAJQbHYRkG+pV3ybeWYWyU2WbxhO
         ZfNVDn1R6Q/TtZOaACdNth2ynSYsWpDy3mLydsISG16eM1i4PyxacUCS/QdeB+9tzGd4
         8Etw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=sCemFPKhbIGffPmHC+eLp2vws2TyZ432QX8IszZiaxA=;
        b=PdoEmpHg8CXqE2BVelOzJBxpvUQa63Fr2Ud4SsrDDTE7J/2IX6Gq62uDvinES8665A
         +QHW6XDJ459tgrgQmeGMc964MxIQF9mwLC0RGHxV/n9ria0yu6cFc0nGa1JF9HxeOiir
         b6uGTHZA8b5uIwOAScPglZcgDPLK8LFquYtpTMuEjo7wxsyY6mEKg3x1ye/22ZavCyep
         4shNB1uzcU290sKSbfilJ4SZFu9B6EGlfGHQLnkVdej94yN59UQx1wfkGc+yWOmGXggD
         EvOq3Bf7gLPzkL7i2rIVc+JsLflyf/H1aFJ12tG19NCvdd9UeIjfFgn5KhoLayYezIWy
         60Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id y16si197861edq.2.2021.05.04.03.46.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 03:46:46 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-wm1-f44.google.com ([209.85.128.44]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MbRwP-1l6koh1tqT-00bu7S for <clang-built-linux@googlegroups.com>; Tue, 04
 May 2021 12:46:46 +0200
Received: by mail-wm1-f44.google.com with SMTP id k4-20020a7bc4040000b02901331d89fb83so1031151wmi.5
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 03:46:46 -0700 (PDT)
X-Received: by 2002:a7b:c344:: with SMTP id l4mr3204841wmj.120.1620125206188;
 Tue, 04 May 2021 03:46:46 -0700 (PDT)
MIME-Version: 1.0
References: <202105030311.xWwkyV9z-lkp@intel.com> <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
 <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
 <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
 <YJDQ0ePGHxmcB7dX@kroah.com> <CAK8P3a30xJ1+zrCC4fk+q9xzLspHuE4VM0UHSWiU3-iFeNN+6g@mail.gmail.com>
 <YJEFF1iHZ4o7LUgV@kroah.com>
In-Reply-To: <YJEFF1iHZ4o7LUgV@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 4 May 2021 12:46:05 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2-ttarw-31YTbq1YbwAxvG3HwouKC9u1YjfyQwMhwovw@mail.gmail.com>
Message-ID: <CAK8P3a2-ttarw-31YTbq1YbwAxvG3HwouKC9u1YjfyQwMhwovw@mail.gmail.com>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Sasha Levin <sashal@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:1b++AJhM7fkAKgn3+i9enXXn1xhwTTCYM21lVotMY+bRh6afvmv
 7FBvGPBnUHTqFTcuj4CvnZtYaX4F3oZ51RykQAgmHSdEEizUI8VRjig9MSdT+8PLnrZ9u9O
 ylycGSmqqDwWTo1f7A3wDbo87g5GERdAbieypBmiEWiaPeyTYO9leYjqNCgAR0w+Z5g+oqy
 IfWAwUx4q86xmc0Vk5VYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:N9D7ttw4Ua8=:uMXbcw3XZw3XwJZwS/oVkc
 uAbv2wjw+CWe0B9yLA1ER+H+zeViLWwXF6wjvzJcRfNi4iEv/EDizdcen8BXSqZq0Ui3PnHLU
 6a2Is/SMjGcqO9E2bGTZCAtforYPaEH1TylGgyrZhg068zjN7k7D+ASBSnkN5JjeoA68YbQ+F
 aoSRu9LGngp+6QmFv9sCQ4XX7HvPJG4EDxl1uPPNj0YC/WQjOu5EHX+MaGtC6c/Mg7gx6XBVz
 hMdzFfmdqozUohIF1NgnUUjMfZm1Rsa43LKVcKN47qlm2xOjLbWyTH0QwfWQxxeK6mZESPpu9
 5pA5bAgUjB4L5q++l14xZAvqyG5ATtN92FaPrAoXHUy+m36yNUESumZRROp+adQdTs3uWus4R
 1v32gID5r/eGnhhHmikk9CIhxy+6imaAItmuY6sF9X3UlXpNhnVmzhVkwyJJZF5s7+Ap7CsXL
 25ct+h0lIoI8GSk7y8sYiuUnMKeuWIA1PeEOLeSGlOI297GCyIEK1wa5GilotsG44PdztF5eV
 nxVG7vyjLI5pTJemVnF3oQ=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 4, 2021 at 10:26 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:

> On Tue, May 04, 2021 at 09:41:14AM +0200, Arnd Bergmann wrote:
> > which is the same as what 7273ad2b08f8 does, but only for this one file
> > instead of all of lib/*.o.
>
> I think a "one off" change would be best here.  Can you submit it?

Sent https://lore.kernel.org/lkml/20210504104441.1317138-1-arnd@kernel.org/T/

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2-ttarw-31YTbq1YbwAxvG3HwouKC9u1YjfyQwMhwovw%40mail.gmail.com.
