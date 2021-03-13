Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHXUWCBAMGQE7FX2FAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 80201339BA7
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 05:05:51 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id i19sf19019480ioh.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 20:05:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615608350; cv=pass;
        d=google.com; s=arc-20160816;
        b=fZby953oZoJSQW1TDWQh20M1ZnrpxhcKEXcqWKTs45sEEzZgpZbmfEkee5mb3vEuSG
         NuI/ZpYrfTfgP8zrzvfVchOSlFfhLYaMcJZ2Wj34It9gLY7nHQLBf7csib1ZDDYqzuMB
         r3cLsSfyEphkwdujs8TQ/JC4RgUb9r6FHVGDwjCylfabrHYAtNGCeVv1U3URwzu+PXgY
         VLl6KEoolB33NyeQx9BKH12oTCV3JQ7oAfwLQWdp81leZlUo4AMSJWdlzz5i7YccviLN
         YaFKM1QBQkjWxKbgjp1zDjOOHgDzanvpHUKFQfEv0vDrQ+6zFsxda2bRLLSnfZiExVm5
         aHbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=BfTJEujDXi/abkjSO1mpnq8WaIMzbgeoHbhO2XU+U1M=;
        b=1HfJYTV4BCw70tVVM0RTXckSM09N1v0sfel/xhwLgeFeEHOvZL5+7ojpvSu0lr14j6
         ItQAx6qCLqVQceQOfsDq5GaY434pJSAAaNpzj29AjnU5XSNUcVyil6zLjYoviQMi8gSV
         jMLO6U5XEGfOJMtAibAIvA5MbrdTPN69pyE2tUhHyVictwqSySBu2j++V5xkHB/BK2rQ
         5Ft0Tk0U7k0IxkzvpfvrnrGxFAsfuVZM8uPXncxdLtoAQ2FiQYvJnKFF2zHXKekRBTOI
         khEuMnzgaz3L9i1s2eUtCo61zx4/YSo0raLMNN/KXMNn+lYN5x0O7TOk8CbBZvXenEDh
         2jtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BfTJEujDXi/abkjSO1mpnq8WaIMzbgeoHbhO2XU+U1M=;
        b=Jvm0vGwXJsxykaRlMNJApRD/0cv0Dcf6mGKHuRWgFoMEDdZh99qSPOK1pSKpIdRJrn
         y57INK81pgtB2WDhut1cN1GbPN5XhIo65Rrreveo743XvRTlOa4QsExhfFBWazp/Iuvr
         4ohQ5BxjxWh9VcfDmY3F9xLILRYa71nCxXPIdLuowwvTLHFk92JzbaFuKrfRIX8K3Jv9
         hmPEiQMpxbfjSsm0NpsdXqQBQRDy4QM+RMio93Uf6SKBLDJklUW7WuWwxA8IsdNOFL5E
         V6UEPKQoUEyA6p6ymvFTS4PilQHcqdutfdh7wKYr6cEwn7WnHhQNqSg5rAe6VcOqwCj8
         qAJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BfTJEujDXi/abkjSO1mpnq8WaIMzbgeoHbhO2XU+U1M=;
        b=FGI4dB5g5/kwEubJcwwsjaLv64b5xux2qKGXSjpv+jqwU3JSVWbCjtMP9zha5AvD6R
         gStRna5tq9ySfoV0dzdzxpEDfUeoLb08VLYHthZIjyDOLc9mVWIDNvkLFHqpF+SLL395
         dHRXkkzVBudEJ4WTguQFyJ/+vmC+r8CifL2LfMDTg7YNjA5qK6XYRyb/TSXaz4fBwhJK
         mQOoRv8vY2chTo15J/1sGPuYSCyvVOOJb+36eJ+pfQKBeFGC4WlGDIvzGJkE2VeAdJ9b
         7bOaD11zP0eorUg5lUeHBn1lLIZEK+/uuGwgyxCgrQy3zRBnaipWnP5izfN2j94KRKMe
         qjRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304PIqrEGZq/8WwT3O/2uiREIdNyzcWSYKYtyc4/syP94vUKYbj
	qMPHP69Z4KB4LQHyoydtf+g=
X-Google-Smtp-Source: ABdhPJzilI5gM6ks3ig3n8JAWkqkIhiLoJV4MV8Xdntm/4ihjF4dy0R1kyHKD2hmoTMhWTL/XD78pA==
X-Received: by 2002:a02:6654:: with SMTP id l20mr2196220jaf.55.1615608350130;
        Fri, 12 Mar 2021 20:05:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:88:: with SMTP id h8ls1667739iob.3.gmail; Fri, 12
 Mar 2021 20:05:39 -0800 (PST)
X-Received: by 2002:a6b:fe13:: with SMTP id x19mr1729224ioh.73.1615608339641;
        Fri, 12 Mar 2021 20:05:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615608339; cv=none;
        d=google.com; s=arc-20160816;
        b=vL+GnRZ76pi4M1w6cESYN5mLT1cC/YQ8wrZ5X6STQqHnP+Ek4hCeRnG6EaRb3KbYK9
         k+cgh5NE4Ztufe7FQudwjRikkopP+MvvPH8SsAOVD45+7DndUUaVkKn4SjlKypatlyLs
         hvOociUhUlmqLI6C5KfL3ZqmyRIXH62MiT2kRA+vSkk1os+MN3MaT1BS6eqKqeiX96Rt
         Uxbda8MFMPc2kpQm4GPulfydcm1Jj4IazeA26oXVVtE5xLK0wlL7atBzsINfttSHUXpg
         tvwSg1YgKhw2BSrYk6/hrsmKUzU1SUdHIj4OJU2OHkLt/vShVVDfzZpNWvnhLXp0yRT6
         lJdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=HcL/dNjX1/Kg36jVsbEGxjigX2SaX2RSiw7PsTVbiTY=;
        b=Eb5N89vUjuRknfqcT/KWTnWS+Kms3RI/BCclR2ldcVCH0b0ZyoILt/4UewqRb5W4W9
         cRyVoiNyVqDM4MhJ6+W7rPLnD2gXDizj5eO6Rj0R6ntpFafZys3zpUo5ZNmTJ3yWz291
         GXhlcgbRqUBgWkt7dktDaD5J+PpkK76YaiRna0jZRuduffzTlVf1lcHcXSYTpEewz/WH
         cruVRGnOulFiZA/Q8RA0DTBO/oxWqsHOS9QfLBXouocOytEsfFHA9zMPQnbXRDavyUPK
         ulDWVk0oigZcVp80uF4jJ7mxlTPFda1CkZQzyJwWqMEGO8An/mFTgRUhau5iHTxF5c1j
         i5/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id r19si329206iov.3.2021.03.12.20.05.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 20:05:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: nhMPkVGmNxMKE3nMFqDrYaqYdt3016Fudz4ODFdXrDYABHoT0JPI+8YOFVRny0GQVL5XSsAMNL
 8AosCczhu/hQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="186543736"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="186543736"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2021 20:05:37 -0800
IronPort-SDR: m+rIHuw7bM6eLiMD22cuqvV57FMd+94PHDnRHQ6fs3BjGtKAoYhQclVDoZ+p4wRVtzEjMC5i9F
 2XxcLRSrb54w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="377919709"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 12 Mar 2021 20:05:34 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lKvWw-0001oN-1j; Sat, 13 Mar 2021 04:05:34 +0000
Date: Sat, 13 Mar 2021 12:04:36 +0800
From: kernel test robot <lkp@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ingo Molnar <mingo@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Zanussi, Tom" <tom.zanussi@linux.intel.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Yordan Karadzhov <y.karadz@gmail.com>
Subject: Re: [PATCH 3/7] tracing: Pass buffer of event to trigger operations
Message-ID: <202103131231.ZgDQ84BZ-lkp@intel.com>
References: <20210312211505.245621825@goodmis.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <20210312211505.245621825@goodmis.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Steven,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linux/master]
[also build test ERROR on linus/master v5.12-rc2 next-20210312]
[cannot apply to tip/perf/core hnaz-linux-mm/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Steven-Rostedt/tracing-Hav=
e-ring_buffer_event_time_stamp-work-for-all-events/20210313-051807
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
a74e6a014c9d4d4161061f770c9b4f98372ac778
config: x86_64-randconfig-a004-20210312 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dfd27e=
bbd0eb137c9a439b7c537bb87ba903efd3)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/e0953acfef6e9234feed2877e=
d1b0a796755ceb6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Steven-Rostedt/tracing-Have-ring_b=
uffer_event_time_stamp-work-for-all-events/20210313-051807
        git checkout e0953acfef6e9234feed2877ed1b0a796755ceb6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/trace/trace_events_hist.c:3191:30: error: incompatible function p=
ointer types assigning to 'action_fn_t' (aka 'void (*)(struct hist_trigger_=
data *, struct tracing_map_elt *, struct trace_buffer *, void *, struct rin=
g_buffer_event *, void *, struct action_data *, unsigned long long *)') fro=
m 'void (struct hist_trigger_data *, struct tracing_map_elt *, void *, stru=
ct ring_buffer_event *, void *, struct action_data *, u64 *)' (aka 'void (s=
truct hist_trigger_data *, struct tracing_map_elt *, void *, struct ring_bu=
ffer_event *, void *, struct action_data *, unsigned long long *)') [-Werro=
r,-Wincompatible-function-pointer-types]
                   data->track_data.save_data =3D save_track_data_snapshot;
                                              ^ ~~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +3191 kernel/trace/trace_events_hist.c

50450603ec9cb8 Tom Zanussi             2018-01-15  3125 =20
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3126) static int action_=
parse(struct trace_array *tr, char *str, struct action_data *data,
7d18a10c316783 Tom Zanussi             2019-02-13  3127  			enum handler_id=
 handler)
7d18a10c316783 Tom Zanussi             2019-02-13  3128  {
7d18a10c316783 Tom Zanussi             2019-02-13  3129  	char *action_name=
;
7d18a10c316783 Tom Zanussi             2019-02-13  3130  	int ret =3D 0;
7d18a10c316783 Tom Zanussi             2019-02-13  3131 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3132  	strsep(&str, ".")=
;
7d18a10c316783 Tom Zanussi             2019-02-13  3133  	if (!str) {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3134) 		hist_err(tr, HIS=
T_ERR_ACTION_NOT_FOUND, 0);
7d18a10c316783 Tom Zanussi             2019-02-13  3135  		ret =3D -EINVAL;
7d18a10c316783 Tom Zanussi             2019-02-13  3136  		goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3137  	}
7d18a10c316783 Tom Zanussi             2019-02-13  3138 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3139  	action_name =3D s=
trsep(&str, "(");
7d18a10c316783 Tom Zanussi             2019-02-13  3140  	if (!action_name =
|| !str) {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3141) 		hist_err(tr, HIS=
T_ERR_ACTION_NOT_FOUND, 0);
7d18a10c316783 Tom Zanussi             2019-02-13  3142  		ret =3D -EINVAL;
7d18a10c316783 Tom Zanussi             2019-02-13  3143  		goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3144  	}
7d18a10c316783 Tom Zanussi             2019-02-13  3145 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3146  	if (str_has_prefi=
x(action_name, "save")) {
7d18a10c316783 Tom Zanussi             2019-02-13  3147  		char *params =3D=
 strsep(&str, ")");
7d18a10c316783 Tom Zanussi             2019-02-13  3148 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3149  		if (!params) {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3150) 			hist_err(tr, HI=
ST_ERR_NO_SAVE_PARAMS, 0);
7d18a10c316783 Tom Zanussi             2019-02-13  3151  			ret =3D -EINVAL=
;
7d18a10c316783 Tom Zanussi             2019-02-13  3152  			goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3153  		}
7d18a10c316783 Tom Zanussi             2019-02-13  3154 =20
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3155) 		ret =3D parse_ac=
tion_params(tr, params, data);
7d18a10c316783 Tom Zanussi             2019-02-13  3156  		if (ret)
7d18a10c316783 Tom Zanussi             2019-02-13  3157  			goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3158 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3159  		if (handler =3D=
=3D HANDLER_ONMAX)
466f4528fbc692 Tom Zanussi             2019-02-13  3160  			data->track_dat=
a.check_val =3D check_track_val_max;
dff81f559285b5 Tom Zanussi             2019-02-13  3161  		else if (handler=
 =3D=3D HANDLER_ONCHANGE)
dff81f559285b5 Tom Zanussi             2019-02-13  3162  			data->track_dat=
a.check_val =3D check_track_val_changed;
466f4528fbc692 Tom Zanussi             2019-02-13  3163  		else {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3164) 			hist_err(tr, HI=
ST_ERR_ACTION_MISMATCH, errpos(action_name));
466f4528fbc692 Tom Zanussi             2019-02-13  3165  			ret =3D -EINVAL=
;
466f4528fbc692 Tom Zanussi             2019-02-13  3166  			goto out;
466f4528fbc692 Tom Zanussi             2019-02-13  3167  		}
7d18a10c316783 Tom Zanussi             2019-02-13  3168 =20
466f4528fbc692 Tom Zanussi             2019-02-13  3169  		data->track_data=
.save_data =3D save_track_data_vars;
466f4528fbc692 Tom Zanussi             2019-02-13  3170  		data->fn =3D ont=
rack_action;
7d18a10c316783 Tom Zanussi             2019-02-13  3171  		data->action =3D=
 ACTION_SAVE;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3172  	} else if (str_ha=
s_prefix(action_name, "snapshot")) {
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3173  		char *params =3D=
 strsep(&str, ")");
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3174 =20
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3175  		if (!str) {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3176) 			hist_err(tr, HI=
ST_ERR_NO_CLOSING_PAREN, errpos(params));
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3177  			ret =3D -EINVAL=
;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3178  			goto out;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3179  		}
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3180 =20
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3181  		if (handler =3D=
=3D HANDLER_ONMAX)
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3182  			data->track_dat=
a.check_val =3D check_track_val_max;
dff81f559285b5 Tom Zanussi             2019-02-13  3183  		else if (handler=
 =3D=3D HANDLER_ONCHANGE)
dff81f559285b5 Tom Zanussi             2019-02-13  3184  			data->track_dat=
a.check_val =3D check_track_val_changed;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3185  		else {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3186) 			hist_err(tr, HI=
ST_ERR_ACTION_MISMATCH, errpos(action_name));
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3187  			ret =3D -EINVAL=
;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3188  			goto out;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3189  		}
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3190 =20
a3785b7eca8fd4 Tom Zanussi             2019-02-13 @3191  		data->track_data=
.save_data =3D save_track_data_snapshot;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3192  		data->fn =3D ont=
rack_action;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3193  		data->action =3D=
 ACTION_SNAPSHOT;
7d18a10c316783 Tom Zanussi             2019-02-13  3194  	} else {
7d18a10c316783 Tom Zanussi             2019-02-13  3195  		char *params =3D=
 strsep(&str, ")");
7d18a10c316783 Tom Zanussi             2019-02-13  3196 =20
e91eefd731d933 Tom Zanussi             2019-02-13  3197  		if (str_has_pref=
ix(action_name, "trace"))
e91eefd731d933 Tom Zanussi             2019-02-13  3198  			data->use_trace=
_keyword =3D true;
e91eefd731d933 Tom Zanussi             2019-02-13  3199 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3200  		if (params) {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3201) 			ret =3D parse_a=
ction_params(tr, params, data);
7d18a10c316783 Tom Zanussi             2019-02-13  3202  			if (ret)
7d18a10c316783 Tom Zanussi             2019-02-13  3203  				goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3204  		}
7d18a10c316783 Tom Zanussi             2019-02-13  3205 =20
466f4528fbc692 Tom Zanussi             2019-02-13  3206  		if (handler =3D=
=3D HANDLER_ONMAX)
466f4528fbc692 Tom Zanussi             2019-02-13  3207  			data->track_dat=
a.check_val =3D check_track_val_max;
dff81f559285b5 Tom Zanussi             2019-02-13  3208  		else if (handler=
 =3D=3D HANDLER_ONCHANGE)
dff81f559285b5 Tom Zanussi             2019-02-13  3209  			data->track_dat=
a.check_val =3D check_track_val_changed;
466f4528fbc692 Tom Zanussi             2019-02-13  3210 =20
466f4528fbc692 Tom Zanussi             2019-02-13  3211  		if (handler !=3D=
 HANDLER_ONMATCH) {
466f4528fbc692 Tom Zanussi             2019-02-13  3212  			data->track_dat=
a.save_data =3D action_trace;
466f4528fbc692 Tom Zanussi             2019-02-13  3213  			data->fn =3D on=
track_action;
466f4528fbc692 Tom Zanussi             2019-02-13  3214  		} else
7d18a10c316783 Tom Zanussi             2019-02-13  3215  			data->fn =3D ac=
tion_trace;
466f4528fbc692 Tom Zanussi             2019-02-13  3216 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3217  		data->action =3D=
 ACTION_TRACE;
7d18a10c316783 Tom Zanussi             2019-02-13  3218  	}
7d18a10c316783 Tom Zanussi             2019-02-13  3219 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3220  	data->action_name=
 =3D kstrdup(action_name, GFP_KERNEL);
7d18a10c316783 Tom Zanussi             2019-02-13  3221  	if (!data->action=
_name) {
7d18a10c316783 Tom Zanussi             2019-02-13  3222  		ret =3D -ENOMEM;
7d18a10c316783 Tom Zanussi             2019-02-13  3223  		goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3224  	}
7d18a10c316783 Tom Zanussi             2019-02-13  3225 =20
7d18a10c316783 Tom Zanussi             2019-02-13  3226  	data->handler =3D=
 handler;
7d18a10c316783 Tom Zanussi             2019-02-13  3227   out:
7d18a10c316783 Tom Zanussi             2019-02-13  3228  	return ret;
7d18a10c316783 Tom Zanussi             2019-02-13  3229  }
7d18a10c316783 Tom Zanussi             2019-02-13  3230 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202103131231.ZgDQ84BZ-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--Q68bSM7Ycu6FN28Q--
