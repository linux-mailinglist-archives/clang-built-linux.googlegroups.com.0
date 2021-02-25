Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUFP4CAQMGQEJNRKI2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB163258AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:34:08 +0100 (CET)
Received: by mail-ej1-x637.google.com with SMTP id p6sf3140268ejw.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:34:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614288848; cv=pass;
        d=google.com; s=arc-20160816;
        b=euHudjI8AK4p4UrQZ1n/etRRMkADi670l1oHsuoAr+z+0sDf2fMGiW9uWFzUyLVK0w
         0jHmnJLE+3sNSH3FP0qUaYKlTMhtHz4My83fkz0Z+r7mGmfyzRK0CqGOS0OIBKPq7GXk
         RqyTL/kY3qyUyOlqRtEPTxTrJ3+Eu2vLfqSiYrpgYE6K0PUUq3YUbaphjGevR5MDnTk5
         YjZmAe1tkuoGxVn8t1vII4HPjAoS7el4GU82HRECdgb9H/CQgijvIVIhQETpQgrg4bn/
         kpfsW5Hs9uXbTZFzUda6NhT+QLgw2BWfRzhHViRKL0R56gYCe2JnKyyuYNgVRXRiSdLD
         HGOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zZDBWT7Tgoop3P9vG03l6K7Co9ATx7EQ15zNFclm5cE=;
        b=RMrTSDaxHcP2AbCaY6J22ERKEYFwtlVkJKbvlhCUeJIYYFjOv6T1jQ+Ywl5FzG6j2/
         u94kwdSv+oB8+mjgAwzkQh47FHPatXIuiDpBkNAZs+qMp3G5x28cSXp6nz/DpBwegznF
         aSSq5+QOL2ItFKewXu7GOHaLeZ8wOisFQ3gGPyHjkCHNMRlqBRtuF4Vdj79aglope7wo
         Wvcmcgn2RRYLb+0eH690K+/RekESy0fOUqUGLcZ/Y9DIVBTaWz7k7MpZC1Y6C+YhQ8Ru
         smNCOU3pKkglm57usOtyTiIu/yFuFZ8CvxmiBWgSuaKR1YZ9hbztw6zkCzlxqYwEvhM8
         7ofQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iVOvgwBH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZDBWT7Tgoop3P9vG03l6K7Co9ATx7EQ15zNFclm5cE=;
        b=HbDKvUgJIxaIAQiKVwiaK69o0TcelbhGiwExtR4QZzQjOJhr/AZHcacZ83XeQk5GV9
         aNL/aAxan53FvDVMowfdvLy4VhUDVvFLfH9M1LHqz1IUUlWroxrnsr+CXWQ6tey1YPa/
         oFybVQXHWVWxVKV/HuXVB512k31ZzX09UNYscZLbL3Vnm+XU6HYCutke5foJwxnmQVQv
         eajx3qWFCUabLesbSg0Fkka+MorKzMyFN8KL3K8fgNNBA0mBbdTT/3WvpzpL+FC7OFoL
         6tsrAenc1aV5XsjXJuEWHILUOgb53FlrPQv2knHjXu/TpxbI6zJdoxBXe3Z50eBEjL+3
         sVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZDBWT7Tgoop3P9vG03l6K7Co9ATx7EQ15zNFclm5cE=;
        b=FMLaPoZppOlJv10OFfb/zvHIK9TQd8oC5JcxK0vYzUCiesDmZHclshwL8q2448XUL8
         rI6krS2ED7c836rptcDhMpPXFzOW2kx9JcNkjl0Es16gXq5s6gHC5Su53xYm+K+fpnhG
         Cs8dQJEnirS9xHv4h5rr7xgHKS3vtq6+4oNWD8VUatAwsVnBQFSJ1F5CXMOCq/JQIxY8
         WiXKSEjPw3vMjnTtV6TG7WsYxMqtSQWpJ0v9XRHhcKmz79IY5ZzwgpDAb16ejFiRmyAL
         hHZnU6XCNyGK4kw3L8xK1DeAxnmrdHYnub0+OI2VBgtK54+khIwF9IOzzgD4tDeh4OxV
         yQyg==
X-Gm-Message-State: AOAM532LUsMOv7goSFcpMNm1mGbT73/7Mx4rdpFQtIQHA5lsOvi+adTh
	0d3dAmPlkPtY9/h5iA97Ssc=
X-Google-Smtp-Source: ABdhPJz+mkrN56wUaCe1qXa8eC/7/ADg/IId1y8OaM6B3SZQYvEJBX6d7eiFtYs96o0rtS37LfWsVQ==
X-Received: by 2002:a17:906:a099:: with SMTP id q25mr4673406ejy.549.1614288848398;
        Thu, 25 Feb 2021 13:34:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3619:: with SMTP id q25ls1035845ejb.3.gmail; Thu, 25
 Feb 2021 13:34:07 -0800 (PST)
X-Received: by 2002:a17:906:9416:: with SMTP id q22mr4801675ejx.190.1614288847576;
        Thu, 25 Feb 2021 13:34:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614288847; cv=none;
        d=google.com; s=arc-20160816;
        b=lFltbVtQ30mFbxhrv3edhBV7GG1EmcJgC1Sj8uC1/eJMIlSsRrjPNC6/X+ljtnTnpf
         T6cdmGQZSpPLj77aXigcQ/kaPgWCOmnshFIESocGjHUTjUiH9aQ47jOJ1uGIy0P6zipV
         t+Flerj/G5XB4UMI2sqPrfO8O3YGhl8+RkYknN3Czm8gLJ8b6N79f/LlE6InjQ81PtiN
         3K/ppjwG+sLvZV3h61QyNPmFx+RG7umk/mBDb8t/5u8HVZ1x5olg5kwIxGVMm0qhYxn6
         IVWXs0KDcQQkKnC1o4QXL4EujAgy4Q+Ji9wHhI9L34ldG2YTJCdY0tnOgpzn27SCP1b4
         1bLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z33fwCKGRLdRggSVLa36+oxEo5k56+kIObYh56DIr1o=;
        b=ngRCdkVjeZYM9EtDc6por7FNPHYttYmh3HS2coseODDXyB7MWAqOHqeGUd3vovvEiL
         ZNEmyJgk1bciF0jlp7ByUSDQy6JfbEegysNIEP5d8d+SIghdbAGhsQKBT9GZGFe0j38i
         T04zIXYrdcRLxccIK6/u/MkhwoW9T2IO1nbf2AnCeE6tMNVHPAM4DCdE8s2cZs+xA8vs
         1YbTpSV4ISsruCi66J9DHS9koiihDOeTm1zjMzrD8zzEEqPqJ62hpuoSCVZvnGT6DetS
         zwz5o3WVaykp/bD3o1zYJDd9ZOXEtwKLi9em1lfTs1HKS2QqrCoESFhxDHCqxDhic7Ut
         vn0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iVOvgwBH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id s18si318496edq.0.2021.02.25.13.34.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id v5so10741122lft.13
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:34:07 -0800 (PST)
X-Received: by 2002:a05:6512:12c1:: with SMTP id p1mr3098656lfg.374.1614288847058;
 Thu, 25 Feb 2021 13:34:07 -0800 (PST)
MIME-Version: 1.0
References: <20210225150119.405469-1-arnd@kernel.org>
In-Reply-To: <20210225150119.405469-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:33:56 -0800
Message-ID: <CAKwvOdkWfQi4vPphJ9X+xQ5MdzGhrHr1mj=oFGh3Yv5TB=76_Q@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Fix an uninitialized index variable
To: Arnd Bergmann <arnd@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <nathan@kernel.org>, Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>, 
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, 
	Stylon Wang <stylon.wang@amd.com>, Eryk Brol <eryk.brol@amd.com>, 
	Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, 
	Simon Ser <contact@emersion.fr>, Qingqing Zhuo <qingqing.zhuo@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iVOvgwBH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Thu, Feb 25, 2021 at 7:01 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang points out that the new logic uses an always-uninitialized
> array index:
>
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:9810:38: warning: variable 'i' is uninitialized when used here [-Wuninitialized]
>                         timing  = &edid->detailed_timings[i];
>                                                           ^
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:9720:7: note: initialize the variable 'i' to silence this warning
>
> My best guess is that the index should have been returned by the
> parse_hdmi_amd_vsdb() function that walks an array here, so do that.
>
> Fixes: f9b4f20c4777 ("drm/amd/display: Add Freesync HDMI support to DM")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c    | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index b19b93c74bae..667c0d52dbfa 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -9736,7 +9736,7 @@ static bool parse_edid_cea(struct amdgpu_dm_connector *aconnector,
>         return false;
>  }
>
> -static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
> +static int parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
>                 struct edid *edid, struct amdgpu_hdmi_vsdb_info *vsdb_info)
>  {
>         uint8_t *edid_ext = NULL;
> @@ -9746,7 +9746,7 @@ static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
>         /*----- drm_find_cea_extension() -----*/
>         /* No EDID or EDID extensions */
>         if (edid == NULL || edid->extensions == 0)
> -               return false;
> +               return -ENODEV;
>
>         /* Find CEA extension */
>         for (i = 0; i < edid->extensions; i++) {
> @@ -9756,14 +9756,15 @@ static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
>         }
>
>         if (i == edid->extensions)
> -               return false;
> +               return -ENODEV;
>
>         /*----- cea_db_offsets() -----*/
>         if (edid_ext[0] != CEA_EXT)
> -               return false;
> +               return -ENODEV;
>
>         valid_vsdb_found = parse_edid_cea(aconnector, edid_ext, EDID_LENGTH, vsdb_info);
> -       return valid_vsdb_found;
> +
> +       return valid_vsdb_found ? i : -ENODEV;

Thanks for the patch!

I don't think we need a local variable to store the return value from
one function call that's immediately returned, ie.

return parse_edid_cea(aconnector, edid_ext, EDID_LENGTH, vsdb_info) ?
i : -ENODEV;

would suffice, but the patch is still fine as is.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  }
>
>  void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
> @@ -9781,7 +9782,6 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
>         struct amdgpu_device *adev = drm_to_adev(dev);
>         bool freesync_capable = false;
>         struct amdgpu_hdmi_vsdb_info vsdb_info = {0};
> -       bool hdmi_valid_vsdb_found = false;
>
>         if (!connector->state) {
>                 DRM_ERROR("%s - Connector has no state", __func__);
> @@ -9857,8 +9857,8 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
>                         }
>                 }
>         } else if (edid && amdgpu_dm_connector->dc_sink->sink_signal == SIGNAL_TYPE_HDMI_TYPE_A) {
> -               hdmi_valid_vsdb_found = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
> -               if (hdmi_valid_vsdb_found && vsdb_info.freesync_supported) {
> +               i = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
> +               if (i >= 0 && vsdb_info.freesync_supported) {

reusing `i` here is safe, for now, but reuse of variables like this in
separate branches like this might not get noticed if the function is
amended in the future.

>                         timing  = &edid->detailed_timings[i];
>                         data    = &timing->data.other_data;
>
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkWfQi4vPphJ9X%2BxQ5MdzGhrHr1mj%3DoFGh3Yv5TB%3D76_Q%40mail.gmail.com.
