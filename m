Return-Path: <clang-built-linux+bncBDPZFQ463EFRBEGD4CAQMGQEKIASTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 66665325959
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:15:45 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id u20sf2641186ual.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:15:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614291344; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLjH836QKTlivEYluczdpViYJrTBR5qI3ZcRaaj7gQ9qwaVnBWWurvgr0CL7LYT8Pu
         x2Zj6Cx+FeXBT7Sr5SZ5sHe59sev3ydmruUap9pLDHadmhjxB09zTdMkPgtxOIIXDp6n
         PBpFj98leBYdOgfp9HhkpANdGy22P9Lkt5VnB8T81TgDzIgtWS6yHwMfLQOpZ+m8f5uQ
         yFfC8+9xAOEuuekXVvPIBIoD+FwQcHE7m1Ju+tXg02ISnLa7TyaPLIPHuTd/SN+b/r8G
         jk8HNmzqOZljFG8/eaW9zOpEESLMNyzuHms58tzNeQdkPjlcrhCJATaSC9pHmjmX0oGM
         WbSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MF1Lm/Zlx0tks4ms0dyOt/YpfO/L9aGzxQoMTElJG8A=;
        b=AXRmGwwMnsxoirRbOqBItbVeKUdDAH34IL4lLD9g437drK6KO1oIW3ciOvXy2+dYMs
         POskB4JLq0MV7XfXYfajLiajrE+XsCSYMB4bqoeHuGhUTu8LPXjzYVsD9NSpz3le/sxC
         eCoFHsJ6+Os/mk2CSV1rTmPFQAXZD9gLRn5apQya54APbAHUDYTnL8wmOFn4bdCGrh0T
         WnH//VNBtcob5EgUqYytkZUPeR9KFkpVlApDgVdDsV+AXNDw/U8jUl6dDNdkAz7ush20
         0rdeDgoYQQ5T1c01aIAMRnpy9zVpVFOaeosMxnaZwjrfSTjsyK5GA12JCVTIzNh8iJNE
         PNxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="p/ihU0Ur";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c2a as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MF1Lm/Zlx0tks4ms0dyOt/YpfO/L9aGzxQoMTElJG8A=;
        b=rS4XGyHy6+TCIMOrxsQgszZxIDmShl2VYMs3svI7WrD4Huj+V8lbJTqW9x2OHXEkzH
         FmsZgrPErq2RnGz0HL4aBYepgw0TuvDc0ACF7MpBfbZXhvSMuSIYbhFVTe+AQG+BI+5O
         oPRYT1mgE7MQ1yS//qOMK4FqCJbqTgm7XZAgmLWoEj/DWgnkQGhO3VETLLfazE8DbRs/
         xT8eSIrwjAfg4TCrbgsNfyvFF0OkA7DhVbrpPIq9G2UMjC8NULpc31rKXgRJ2Z6L5XEF
         40XwY/Id4b1PWLNbrXriyYqXCPV2XGDRDPBZ5CB4thwd4g+cAaAgbyZUN4qJDJypj8n2
         UL+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MF1Lm/Zlx0tks4ms0dyOt/YpfO/L9aGzxQoMTElJG8A=;
        b=WLHTn4tPZ70brzeRE/b5NkkUH7fKawoOdZnsawzSIec0cQ5ZrQIOQOvy/dRU+F5e9w
         nBhNBx04StQn7/fPhVRUqNi6OBvFzZ0goavjOm8Bo1hP9PuWXu3gfgroeSj5gScJan/I
         MypZLuWofgBHGhxGh2QTHT42i+Omtax2vqKUz0QVmmifivFHxVBQ6xfDEmM+4uGqBK83
         V+N+LVTdJ6DVRABycNWrR8wdBUwGfdpZ2xYZ6/g8oNd5GxW4FIyJGV3s0LhudRakCZPW
         u47Yw4ECJeSywUU2jRYzknH9O6jVnTFq0/Rv+lFF2nFrtysNhth+PA/RLuQ9ZYHGpwKL
         Cngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MF1Lm/Zlx0tks4ms0dyOt/YpfO/L9aGzxQoMTElJG8A=;
        b=nxD1CIVDh7Fu+rfWCVcMBlVE5EFBgKpUMJombo4Gtc4awlzsi9h0RoL68QvT+/EwBg
         0+5UtSasQR30ybg3RRpPdEuhZmktLOvfzNSJa9wPiRBfwNqy0BM9WcmKnhWKSG6o1fIv
         EWe84Uka1g4hsxM5Inqo3M5xLoYU7+bZoWcaiIX59D2dj9vUJP7bRw6wL5xpCdGmcGbq
         U4OQcX678A3mRH2rYwUF0Rfp5KPOuqAk/qdlSu9onkrIrU63P2Z7QeS/KV4LJdWIT3w/
         4EpoL9M4cFpUN+YePfhqDJ2goKpfqmUDUpNDKOONYPWgz1divqvgdaSZtKSfOqJNMUAj
         kWlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bvC5OAs51WpJuBtRM8G+ZolpkTR5Xrut5Ne+32dPuK9sFxisz
	kMwiNqkdZRQQPJZDgzDz3JA=
X-Google-Smtp-Source: ABdhPJzB/dk1gAiLBwZVHdRoN/AWp4QqipbB6wYfTJBYnwk9IX11QbXfZX/1XeeEZwJ9XM0l5mPAMA==
X-Received: by 2002:ab0:59c1:: with SMTP id k1mr139962uad.103.1614291344478;
        Thu, 25 Feb 2021 14:15:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a5c5:: with SMTP id o188ls366014vke.2.gmail; Thu, 25 Feb
 2021 14:15:44 -0800 (PST)
X-Received: by 2002:a1f:2a03:: with SMTP id q3mr56579vkq.0.1614291344004;
        Thu, 25 Feb 2021 14:15:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614291344; cv=none;
        d=google.com; s=arc-20160816;
        b=HohuHGso5oT+XXDTuZvEtgPKBiOCjYe320JJW3gN1DrRq5cM6mpTIL3cRGpLXZcaDX
         WZX460aY2MoLLPWmOWl/+mcvELISgEu9zge1lq4kCzvEL6xfhdCvss9y9Hzgf7Ivldx+
         zREkXyikYcQsOxbGW0zu8a7o2FM7Qq8YJFW4PnCEtSu9NxuevdSZr1bIbnO+zuj/5mC7
         PMMGR++ojG6UOjvQakVijs66X93ijY84vU8BLmQteq2a9BuvcDKRW0GFSHsIf7rcakrS
         kOIvjC8mE3UpAJ8sStQl/fYBK3KEuBEtP8HRc4O/xWUVOsvNaW6FQ4DPG8/uwz2Cxc7U
         GzmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r4a3+s4Cr4ghjIOXuD7YCu2wxYZMNr5Kr9H6awJOdGA=;
        b=jVkurcC14cEVMMeGPuOgtr1QdHGEx/aJZYMhZHAFDoQRyrsIozABPUL7i4doMKLwen
         2qcXXMZAM1gIbVDQbmdAYxyzvukoOC5/E8CwL8K6rdd2kTF/IDRWq2EI0AzQF0fuqB0f
         ET30SBY1dgnyhnGZAhw6wyrAVY7PJqPHbVoNzr488r8F+v2k+sH49L3nF9rzRiNHTLXv
         SajSOmTiSZ8pNJmENQBTqjzvd7oq651WLn81Em6BjNdvLeJ8t0nabCzQVVfGvUD9GQO8
         F1U803RlAW5+YY1CpYgKZozOxcmV10pQtjyrIkzFfyxVe9NVZXgthtu/5ZVLbISD9dqE
         pAJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="p/ihU0Ur";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c2a as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com. [2607:f8b0:4864:20::c2a])
        by gmr-mx.google.com with ESMTPS id c12si23178vsp.1.2021.02.25.14.15.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 14:15:43 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c2a as permitted sender) client-ip=2607:f8b0:4864:20::c2a;
Received: by mail-oo1-xc2a.google.com with SMTP id s23so1746166oot.12
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 14:15:43 -0800 (PST)
X-Received: by 2002:a4a:9801:: with SMTP id y1mr79967ooi.90.1614291343519;
 Thu, 25 Feb 2021 14:15:43 -0800 (PST)
MIME-Version: 1.0
References: <20210225150119.405469-1-arnd@kernel.org>
In-Reply-To: <20210225150119.405469-1-arnd@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 25 Feb 2021 17:15:32 -0500
Message-ID: <CADnq5_M8+SMJWQ4snm73ky3pFVkKYr2=bCB-x0ymZ3j405uP7g@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Fix an uninitialized index variable
To: Arnd Bergmann <arnd@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Stylon Wang <stylon.wang@amd.com>, Eryk Brol <eryk.brol@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	David Airlie <airlied@linux.ie>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
	Qingqing Zhuo <qingqing.zhuo@amd.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Aurabindo Pillai <aurabindo.pillai@amd.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, 
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="p/ihU0Ur";       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c2a
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 25, 2021 at 10:01 AM Arnd Bergmann <arnd@kernel.org> wrote:
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

This looks correct to me.  Stylon can you verify?

Thanks,

Alex


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
>                         timing  = &edid->detailed_timings[i];
>                         data    = &timing->data.other_data;
>
> --
> 2.29.2
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_M8%2BSMJWQ4snm73ky3pFVkKYr2%3DbCB-x0ymZ3j405uP7g%40mail.gmail.com.
